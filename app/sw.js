// Sumi offline support. The app is one page, so: keep a copy of it (and the fonts, icons, mascot and
// stroke-order files it uses) and serve that copy when there's no connection.
// - The page: network first, so a push shows up on the next open; the saved copy only when offline.
// - Everything else from Sumi, Google Fonts, jsDelivr: the saved copy first, refreshed in the background.
// - Supabase (accounts, sync, corrections) is never cached: it goes straight to the network.
const CACHE = "sumi-v1";
const CORE = ["./", "manifest.webmanifest", "icons/icon-192.png", "icons/apple-touch-icon.png", "../favicon.svg"];

self.addEventListener("install", e => {
  e.waitUntil(caches.open(CACHE).then(c => c.addAll(CORE)).then(() => self.skipWaiting()));
});
self.addEventListener("activate", e => {
  e.waitUntil(caches.keys()
    .then(keys => Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k))))
    .then(() => self.clients.claim()));
});

const CACHEABLE = url => url.origin === location.origin
  || url.hostname === "fonts.googleapis.com" || url.hostname === "fonts.gstatic.com" || url.hostname === "cdn.jsdelivr.net";

self.addEventListener("fetch", e => {
  const req = e.request, url = new URL(req.url);
  if (req.method !== "GET" || !CACHEABLE(url)) return;
  if (req.mode === "navigate") {
    e.respondWith(fetch(req)
      .then(res => { if (res.ok) { const copy = res.clone(); caches.open(CACHE).then(c => c.put("./", copy)); } return res; })
      .catch(() => caches.match("./")));
    return;
  }
  e.respondWith(caches.open(CACHE).then(async c => {
    const saved = await c.match(req);
    const fresh = fetch(req).then(res => { if (res.ok || res.type === "opaque") c.put(req, res.clone()); return res; });
    if (saved) { e.waitUntil(fresh.catch(() => {})); return saved; }
    return fresh;
  }));
});

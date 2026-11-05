-- Sumi: owner corrections to words (meanings, accepted readings, example sentence), read by everyone.
-- Run once in the Supabase SQL editor (Dashboard → SQL Editor → New query).
-- Before running, replace YOUR-EMAIL below with the email of the account that may edit.

-- Who may edit. Each user can only see whether they themselves are listed.
create table if not exists public.owners (
  user_id uuid primary key references auth.users (id) on delete cascade
);
alter table public.owners enable row level security;

create policy "Users can see if they are an owner"
  on public.owners for select
  to authenticated
  using ((select auth.uid()) = user_id);

-- The SQL editor runs as an admin, so it can look the account up by email.
insert into public.owners (user_id)
  select id from auth.users where email = 'YOUR-EMAIL'
  on conflict do nothing;

-- The corrections: one row per word id ("v:何時・いつ"), with only the fields that were changed.
create table if not exists public.corrections (
  item_id    text primary key,
  data       jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.corrections enable row level security;

create policy "Anyone can read corrections"
  on public.corrections for select
  to anon, authenticated
  using (true);

create policy "Owners can add corrections"
  on public.corrections for insert
  to authenticated
  with check (exists (select 1 from public.owners where user_id = (select auth.uid())));

create policy "Owners can change corrections"
  on public.corrections for update
  to authenticated
  using (exists (select 1 from public.owners where user_id = (select auth.uid())))
  with check (exists (select 1 from public.owners where user_id = (select auth.uid())));

create policy "Owners can remove corrections"
  on public.corrections for delete
  to authenticated
  using (exists (select 1 from public.owners where user_id = (select auth.uid())));

-- "Automatically expose new tables" is off, so grant access explicitly.
-- Guests may only read corrections; the policies above decide who may write.
grant usage on schema public to anon, authenticated;
grant select on table public.owners to authenticated;
grant select on table public.corrections to anon, authenticated;
grant insert, update, delete on table public.corrections to authenticated;

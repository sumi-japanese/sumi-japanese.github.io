# Step 4 – N5/N4 words without a JMdict "common" marker

**Nothing has been removed.** Checked via jisho.org's word API, whose `is_common` flag comes from JMdict's priority markers (ichi1, news1, spec1/spec2, gai1). The exact nfXX bands aren't exposed by jisho; the flag covers the same "common word" list.

Only **14 of 1,234** N5/N4 words are flagged. Several are false alarms: JMdict marks the plain word (酒, 皿, 祭り, 見舞い) as common but not the polite お- form.

| # | Deck | Word | Reading | Meaning in Sumi | Why flagged | Recommendation |
|---|---|---|---|---|---|---|
| 1 | N5 | 伯母さん | おばさん | aunt | No marker on this kanji spelling; usually written in kana | **Keep** (basic word) |
| 2 | N5 | お酒 | おさけ | alcohol; sake | Polite form; 酒 itself is common | **Keep** |
| 3 | N5 | お皿 | おさら | plate; dish | Polite form; 皿 itself is common | **Keep** |
| 4 | N5 | 三 | サン | three | **Duplicate**: Sumi also has 三 さん (N5) | **Delete** (duplicate) |
| 5 | N5 | ＰＥＴ | ペット | polyethylene terephthalate (plastic) | **Wrong entry**: the N5 word is ペット "pet", which Sumi already has | **Delete** |
| 6 | N4 | 降り出す | ふりだす | to begin to rain/snow | Not marked common | **Keep** (useful, matches 〜出す grammar) |
| 7 | N4 | お陰 | おかげ | grace (of God); blessing | Usually written in kana; first sense is the religious one | **Keep**, but show "thanks to, owing to" first (that's the N4 use, as in おかげで) |
| 8 | N4 | もう直ぐ | もうすぐ | soon; shortly | Usually written in kana | **Keep** |
| 9 | N4 | 泳ぎ方 | およぎかた | way of swimming | Just 泳ぐ + 方 (taught by the 〜方 grammar) | **Delete** |
| 10 | N4 | 都 | と | Tokyo Metropolis | Rare standalone reading; Sumi has 都 みやこ in N3 | **Delete** |
| 11 | N4 | お見舞い | おみまい | visit to someone sick | Polite form; 見舞い is common | **Keep** |
| 12 | N4 | お出でになる | おいでになる | to be (honorific) | Formal keigo, usually kana | **Move to N3** |
| 13 | N4 | お祭り | おまつり | festival | Polite form; 祭り is common | **Keep** |
| 14 | N4 | 端 | つま | edge; tip | Rare reading; Sumi has 端 はし in N3 | **Delete** |

**How removal works:** removed words are left out of the decks by their ID. Any saved progress for them simply stops showing (nothing errors, nothing else changes), and it would come back if a word were restored.

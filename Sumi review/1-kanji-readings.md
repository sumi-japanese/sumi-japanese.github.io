# Step 1 – Kanji readings report (N5 + N4)

**Status: nothing has been changed yet. Please review.**

## 火 and か

火 already stores カ (か) as its on'yomi. Tested in the app:

| Question | Typed | Result |
|---|---|---|
| On'yomi | ka / か / カ | Accepted (shown as カ) |
| Kun'yomi | ka (か) | Blocked: "That's the on'yomi. This one asks for the kun'yomi." (not marked wrong) |
| Kun'yomi | hi (ひ) | Accepted |
| Kun'yomi | ho (ほ) | Accepted, but ほ- is rare (proposed for removal below) |

You chose to keep separate on'yomi/kun'yomi questions, so か is correct only on the on'yomi question. No code change is needed for 火 apart from removing the rare ほ-.

## How this was checked

- Sumi's readings came from jisho.org's kanji pages, which use KANJIDIC2. So no reading is **wrong** in the sense of not existing in KANJIDIC2.
- To find **common** vs **rare** readings, I matched all 2,612 N5–N3 vocabulary words that contain kanji against each kanji's readings (allowing normal sound changes such as がっこう and ひとびと). 2,512 words matched.
- A reading that never appears in any of those words, and that I also don't recognise as a reading a learner needs, is listed under **Propose to remove**. Readings I'm not sure about are under **Unsure**, so you can decide.
- Prefix/suffix forms that are just sound changes of a reading that's already listed (e.g. 日 -び in 日曜日, 書 -がき) are kept: they don't hurt and they explain words like 花火.

## Missing common readings

None found. The 100 words that didn't match all use **special whole-word readings** (jukujikun / ateji), which are not readings of the individual kanji and are not in KANJIDIC2's per-kanji readings. Examples:

| Kanji | In word | Note |
|---|---|---|
| 日 | 明日 あした, 日本 にほん | あした is a whole-word reading; にほん is a shortened ニチ |
| 時 | 時計 とけい | whole-word reading |
| 風 | 風邪 かぜ | whole-word reading |
| 今 | 今年 ことし | whole-word reading |
| 父 母 兄 姉 | お父さん, お母さん, お兄さん, お姉さん | special family readings |
| 何 | 何処 どこ, 何故 なぜ | ateji |
| 下 | 下手 へた | whole-word reading |
| 田 | 田舎 いなか | whole-word reading |
| 一 | 一寸 ちょっと | ateji |

**Recommendation:** don't add these as kanji readings (that would make the kanji reading quiz accept wrong answers). They're already taught correctly as vocabulary words.

## Possibly wrong

- **姉 はは** – KANJIDIC2 does list it, but it's an obsolete reading and confusing next to 母 はは. Included in the removal list.

## Rare readings currently in Sumi (95 kanji)

| Kanji | Deck | Meaning | On'yomi now | Kun'yomi now | Propose to remove | Unsure (your call) |
|---|---|---|---|---|---|---|
| 二 | N5 | two | ニ、ジ | ふた、ふた.つ、ふたたび | ジ、ふたたび | – |
| 三 | N5 | three | サン、ゾウ | み、み.つ、みっ.つ | ゾウ | – |
| 六 | N5 | six | ロク、リク | む、む.つ、むっ.つ、むい | リク | – |
| 八 | N5 | eight | ハチ、ハツ | や、や.つ、やっ.つ、よう | ハツ | – |
| 十 | N5 | ten | ジュウ、ジッ、ジュッ | とお、と、そ | そ | – |
| 百 | N5 | hundred | ヒャク、ビャク | もも | もも | – |
| 千 | N5 | thousand | セン | ち | – | ち |
| 万 | N5 | ten thousand | マン、バン | よろず | よろず | – |
| 円 | N5 | yen | エン | まる.い、まる、まど、まど.か、まろ.やか | まど、まど.か、まろ.やか | – |
| 火 | N5 | fire | カ | ひ、-び、ほ- | ほ- | – |
| 金 | N5 | gold | キン、コン、ゴン | かね、かな-、-がね | ゴン | – |
| 人 | N5 | person | ジン、ニン | ひと、-り、-と | -と | – |
| 子 | N5 | child | シ、ス、ツ | こ、-こ、ね | ツ、ね | – |
| 男 | N5 | man | ダン、ナン | おとこ、お | お | – |
| 小 | N5 | small | ショウ | ちい.さい、こ-、お-、さ- | お-、さ- | – |
| 中 | N5 | middle | チュウ、ジュウ | なか、うち、あた.る | うち、あた.る | – |
| 上 | N5 | up | ジョウ、ショウ、シャン | うえ、-うえ、うわ-、かみ、あ.げる、-あ.げる、あ.がる、-あ.がる、あ.がり、-あ.がり、のぼ.る、のぼ.り、のぼ.せる、のぼ.す、たてまつ.る | シャン、たてまつ.る | – |
| 左 | N5 | left | サ、シャ | ひだり | シャ | – |
| 山 | N5 | mountain | サン、セン | やま | セン | – |
| 生 | N5 | life | セイ、ショウ | い.きる、い.かす、い.ける、う.まれる、うま.れる、う.まれ、うまれ、う.む、お.う、は.える、は.やす、き、なま、なま-、な.る、な.す、む.す、-う | お.う、な.る、な.す、む.す | – |
| 白 | N5 | white | ハク、ビャク | しろ、しら-、しろ.い | – | ビャク |
| 天 | N5 | heaven | テン | あまつ、あめ、あま- | あまつ、あめ | – |
| 来 | N5 | come | ライ、タイ | く.る、きた.る、きた.す、き.たす、き.たる、き、こ | タイ、きた.す | – |
| 出 | N5 | exit | シュツ、スイ | で.る、-で、だ.す、-だ.す、い.でる、い.だす | – | スイ |
| 入 | N5 | enter | ニュウ、ジュ | い.る、-い.る、-い.り、い.れる、-い.れ、はい.る | ジュ | – |
| 食 | N5 | eat | ショク、ジキ | く.う、く.らう、た.べる、は.む | は.む | – |
| 今 | N5 | now | コン、キン | いま | – | キン |
| 午 | N5 | noon | ゴ | うま | うま | – |
| 毎 | N5 | every | マイ | ごと、-ごと.に | ごと、-ごと.に | – |
| 何 | N5 | what | カ | なに、なん、なに-、なん- | – | カ |
| 外 | N5 | outside | ガイ、ゲ | そと、ほか、はず.す、はず.れる、と- | と- | – |
| 西 | N5 | west | セイ、サイ、ス | にし | ス | – |
| 長 | N5 | long | チョウ | なが.い、おさ | おさ | – |
| 校 | N5 | school | コウ、キョウ |  | キョウ | – |
| 母 | N5 | mother | ボ | はは、も | も | – |
| 手 | N4 | hand | シュ、ズ | て、て-、-て、た- | – | た- |
| 力 | N4 | power | リョク、リキ、リイ | ちから | リイ | – |
| 花 | N4 | flower | カ、ケ | はな | ケ | – |
| 飲 | N4 | drink | イン、オン | の.む、-の.み | オン | – |
| 立 | N4 | stand | リツ、リュウ、リットル | た.つ、-た.つ、た.ち-、た.てる、-た.てる、た.て-、たて-、-た.て、-だ.て、-だ.てる | – | リュウ |
| 多 | N4 | many | タ | おお.い、まさ.に、まさ.る | まさ.に、まさ.る | – |
| 道 | N4 | road | ドウ、トウ | みち、いう | いう | – |
| 店 | N4 | shop | テン | みせ、たな | たな | – |
| 会 | N4 | meet | カイ、エ | あ.う、あ.わせる、あつ.まる | あつ.まる | – |
| 事 | N4 | thing | ジ、ズ | こと、つか.う、つか.える | ズ、つか.う、つか.える | – |
| 発 | N4 | departure | ハツ、ホツ | た.つ、あば.く、おこ.る、つか.わす、はな.つ | た.つ、あば.く、おこ.る、つか.わす、はな.つ | – |
| 場 | N4 | place | ジョウ、チョウ | ば | チョウ | – |
| 問 | N4 | question | モン | と.う、と.い、とん、とい | とん | – |
| 京 | N4 | capital | キョウ、ケイ、キン | みやこ | キン | – |
| 理 | N4 | reason | リ | ことわり | ことわり | – |
| 体 | N4 | body | タイ、テイ | からだ、かたち | かたち | – |
| 主 | N4 | master | シュ、ス、シュウ | ぬし、おも、あるじ | シュウ | – |
| 度 | N4 | degree | ド、ト、タク | たび、-た.い | -た.い | – |
| 強 | N4 | strong | キョウ、ゴウ | つよ.い、つよ.まる、つよ.める、し.いる、こわ.い | こわ.い | – |
| 公 | N4 | public | コウ、ク | おおやけ | ク | – |
| 野 | N4 | field | ヤ、ショ | の、の- | ショ | – |
| 思 | N4 | think | シ | おも.う、おもえら.く、おぼ.す | おもえら.く、おぼ.す | – |
| 世 | N4 | world | セイ、セ、ソウ | よ | ソウ | – |
| 文 | N4 | sentence | ブン、モン | ふみ、あや | あや | – |
| 近 | N4 | near | キン、コン | ちか.い | コン | – |
| 画 | N4 | picture | ガ、カク、エ、カイ | えが.く、かく.する、かぎ.る、はかりごと、はか.る | エ、カイ、かぎ.る、はかりごと、はか.る | – |
| 別 | N4 | separate | ベツ | わか.れる、わ.ける | わ.ける | – |
| 終 | N4 | end | シュウ | お.わる、-お.わる、おわ.る、お.える、つい、つい.に | – | つい、つい.に |
| 台 | N4 | stand | ダイ、タイ | うてな、われ、つかさ | うてな、われ、つかさ | – |
| 住 | N4 | live | ジュウ、ヂュウ、チュウ | す.む、す.まう、-ず.まい | ヂュウ、チュウ | – |
| 工 | N4 | craft | コウ、ク、グ |  | グ | – |
| 建 | N4 | build | ケン、コン | た.てる、た.て、-だ.て、た.つ | – | コン |
| 急 | N4 | hurry | キュウ | いそ.ぐ、いそ.ぎ、せ.く | せ.く | – |
| 止 | N4 | stop | シ | と.まる、-ど.まり、と.める、-と.める、-ど.め、とど.める、とど.め、とど.まる、や.める、や.む、-や.む、よ.す、-さ.す、-さ.し | -さ.す、-さ.し | – |
| 転 | N4 | turn | テン | ころ.がる、ころ.げる、ころ.がす、ころ.ぶ、まろ.ぶ、うたた、うつ.る、くる.めく | まろ.ぶ、うたた、うつ.る、くる.めく | – |
| 究 | N4 | research | キュウ、ク | きわ.める | ク | – |
| 楽 | N4 | fun | ガク、ラク、ゴウ | たの.しい、たの.しむ、この.む | ゴウ、この.む | – |
| 起 | N4 | wake up | キ | お.きる、お.こる、お.こす、おこ.す、た.つ | た.つ | – |
| 着 | N4 | arrive | チャク、ジャク | き.る、き.せる、つ.く、つ.ける | – | ジャク |
| 病 | N4 | illness | ビョウ、ヘイ | や.む、-や.み、やまい | ヘイ | – |
| 質 | N4 | quality | シツ、シチ、チ | たち、ただ.す、もと、わりふ | ただ.す、もと、わりふ | チ |
| 銀 | N4 | silver | ギン | しろがね | しろがね | – |
| 早 | N4 | early | ソウ、サッ | はや.い、はや、はや-、はや.まる、はや.める、さ- | さ- | – |
| 験 | N4 | test | ケン、ゲン | あかし、しるし、ため.す、ためし | あかし、しるし、ため.す、ためし | – |
| 英 | N4 | England | エイ | はなぶさ | はなぶさ | – |
| 医 | N4 | doctor | イ | い.やす、い.する、くすし | くすし | – |
| 写 | N4 | copy | シャ、ジャ | うつ.す、うつ.る、うつ-、うつ.し | ジャ | – |
| 字 | N4 | character | ジ | あざ、あざな、-な | あざな、-な | – |
| 音 | N4 | sound | オン、イン、-ノン | おと、ね | -ノン | – |
| 注 | N4 | pour | チュウ | そそ.ぐ、さ.す、つ.ぐ | さ.す | – |
| 帰 | N4 | return home | キ | かえ.る、かえ.す、おく.る、とつ.ぐ | おく.る、とつ.ぐ | – |
| 悪 | N4 | bad | アク、オ | わる.い、わる-、あ.し、にく.い、-にく.い、ああ、いずくに、いずくんぞ、にく.む | あ.し、ああ、いずくに、いずくんぞ | – |
| 図 | N4 | map | ズ、ト | え、はか.る | え | – |
| 赤 | N4 | red | セキ、シャク | あか、あか-、あか.い、あか.らむ、あか.らめる | シャク | – |
| 館 | N4 | building | カン | やかた、たて | たて | – |
| 秋 | N4 | autumn | シュウ | あき、とき | とき | – |
| 夏 | N4 | summer | カ、ガ、ゲ | なつ | ガ | – |
| 習 | N4 | learn | シュウ、ジュ | なら.う、なら.い | ジュ | – |
| 肉 | N4 | meat | ニク | しし | しし | – |
| 姉 | N4 | older sister | シ | あね、はは | はは | – |

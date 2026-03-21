# 飲食店テンプレート — 画像ファイル一覧

## 必要な画像ファイル（images/ フォルダに配置）

| ファイル名 | 用途 | 推奨サイズ | 備考 |
|---|---|---|---|
| `images/hero.jpg` | ヒーロー背景 | 1920×1080px 以上 | 料理・外観・内観など |
| `images/about.jpg` | Aboutセクション | 800×600px 以上 | 店内・調理風景など |
| `images/menu1.jpg` | メニューカード1 | 800×600px 以上 | 一番人気メニュー |
| `images/menu2.jpg` | メニューカード2 | 800×600px 以上 | おすすめメニュー |
| `images/menu3.jpg` | メニューカード3 | 800×600px 以上 | 季節・限定メニュー |

## 差し替え箇所チェックリスト

### index.html
- [ ] `<title>` タグ — 店名・キャッチコピー
- [ ] `<meta name="description">` — 店の説明文
- [ ] `.nav-logo` — 店名（ナビロゴ）
- [ ] `.nav-tel` / `.tel-number` — 電話番号（2箇所）
- [ ] `.hero-label` — エリア情報
- [ ] `.hero-title` — キャッチコピー
- [ ] `.hero-sub` — サブコピー
- [ ] `.feature-strip` — 4つの強み
- [ ] `.section-title`（about） — こだわりの見出し
- [ ] `.about-body` — 店の説明文（2〜3段落）
- [ ] `.about-badge` — こだわり一言バッジ
- [ ] `images/about.jpg` の `alt` 属性
- [ ] メニューカード3枚（名前・説明・価格・バッジ）
- [ ] `.menu-note` — メニュー注記
- [ ] 店舗情報テーブル（住所・営業時間・定休日・駐車場）
- [ ] Google Maps iframeのsrc
- [ ] Google Mapsリンクのhref
- [ ] フッター店名・コピーライト

## カラー変数（変更する場合）

```css
--ink:     #1c1409;  /* 文字・背景の黒 */
--gold:    #b8882a;  /* ゴールド（メイン） */
--gold-lt: #d4aa55;  /* ゴールド（ライト） */
--cream:   #f6f0e4;  /* クリーム背景 */
--warm:    #fdf8f0;  /* 温かみのある白 */
--brown:   #3e2208;  /* ブラウン（見出し） */
--smoke:   #7a6a55;  /* スモーク（本文） */
```

## フォント

- `Shippori Mincho B1` — 見出し・ロゴ・価格
- `Noto Serif JP` — 本文

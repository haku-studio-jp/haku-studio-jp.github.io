# 建設業テンプレート — 画像ファイル一覧

## 必要な画像ファイル（images/ フォルダに配置）

| ファイル名 | 用途 | 推奨サイズ | 備考 |
|---|---|---|---|
| `images/hero.jpg` | ヒーロー背景 | 1920×1080px 以上 | 現場・施工写真など |
| `images/about.jpg` | 会社概要セクション | 800×600px 以上 | 代表・会社・社屋など |
| `images/recruit.jpg` | 採用セクション | 900×600px 以上 | スタッフ・現場風景など |
| `images/works1.jpg` | 施工実績1 | 800×600px 以上 | 土木・道路工事など |
| `images/works2.jpg` | 施工実績2 | 800×600px 以上 | 建築・倉庫など |
| `images/works3.jpg` | 施工実績3 | 800×600px 以上 | 外構・造成など |
| `images/works4.jpg` | 施工実績4 | 800×600px 以上 | 排水路・土木など |
| `images/works5.jpg` | 施工実績5 | 800×600px 以上 | 公共施設・改修など |
| `images/works6.jpg` | 施工実績6 | 800×600px 以上 | 商業施設・新築など |
| `images/logo.png` | ロゴ（任意） | 200×60px 程度 | 透過PNG推奨 |

## 差し替え箇所チェックリスト

### index.html
- [ ] `<title>` — 会社名・キャッチコピー
- [ ] `<meta name="description">` — 会社説明文
- [ ] `.nav-logo-text` — ナビゲーションの会社名
- [ ] `.nav-tel` — ナビの電話番号
- [ ] `.hero-label` — 英語サブラベル
- [ ] `.hero-title` — メインキャッチコピー
- [ ] `.hero-sub` — サブコピー
- [ ] `.hero-nums` — 実績数値3項目
- [ ] `#works` — 施工実績6枚（案件名・工事種別）
- [ ] `#about .about-body` — 会社説明文
- [ ] `.about-sign-name` — 代表者名
- [ ] `.about-nums` — 会社実績数値
- [ ] `#services` — 事業内容6項目（名前・説明）
- [ ] `#recruit .recruit-points` — 採用ポイント
- [ ] `#contact .contact-info` — 住所・営業時間
- [ ] `.contact-tel` — 電話番号（大）
- [ ] メールアドレス（`mailto:`）
- [ ] フッター会社名・コピーライト

## カラー変数（変更する場合）

```css
--black:   #0d0d0d;   /* ベース背景 */
--dark:    #161616;   /* サブ背景 */
--accent:  #c8a84b;   /* アクセントカラー（ゴールド） ← ここを変更 */
--accent2: #e0c270;   /* アクセントホバー */
--white:   #f4f4f2;   /* テキスト */
```

アクセントカラーは業種・ブランドに合わせて変更してください：
- 土木系: `#c8a84b`（ゴールド）、`#e05c2a`（オレンジ）
- 建築系: `#5b8fc9`（ブルー）、`#3a9e6f`（グリーン）

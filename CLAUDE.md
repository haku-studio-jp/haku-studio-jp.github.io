# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

---

## 【絶対ルール・最優先】

- 日本語テキスト全体に必ず以下を適用する
  - `word-break: keep-all`
  - `overflow-wrap: anywhere`

- 新セクション追加・テキスト変更後は必ず SP（390px）・PC（1280px）のテキスト折り返しシミュレーション結果を報告してからプッシュする

- 文字切れ・不自然な改行・ひっこみが1箇所でもあればプッシュ禁止

- レスポンシブ対応含む全テキストのレイアウト・字詰め・余白バランスを完璧にすること（PC・スマホ両方必ず確認）

---

## Overview

HAKU STUDIO のポートフォリオ・コーポレートサイト。GitHub Pages でホスティングされているシングルページサイト（SPA ではなく、単純な静的 HTML）。

## 構成

- **すべてのコード（HTML・CSS・JS）は `index.html` 1ファイルに集約されている**
- 外部ライブラリなし（CSS フレームワーク・JS フレームワーク不使用）
- Google Fonts のみ外部依存（Cormorant Garamond、Noto Serif JP、DM Mono）
- 画像はルートに直置き（`about-icon.jpg`, `aoba-thumb.jpg`, `beauty-thumb.jpg`, `tontei-thumb.jpg`）

## アーキテクチャ

### CSS 設計
- CSS カスタムプロパティ（`--white`, `--black`, `--gray-*`, `--line`）をベースにカラー管理
- クラス名は短縮形（`rv`, `hdr`, `h-btn`, `w-card` など）でコンパクトに記述
- スクロール連動アニメーションは `.rv` クラス + IntersectionObserver パターン
- レスポンシブは `@media(max-width:960px)` 1ブレークポイントのみ

### JS 構成（インライン、ライブラリ不使用）
1. **カスタムカーソル** — `#cursor` + `#cursor-ring`、マウス追従
2. **ローダー** — ページロード時にカウントアップアニメーション後にフェードアウト
3. **ヒーローパネルアニメーション** — 4分割パネルが順番に `scaleY(0)` で退場
4. **ヒーローテキスト** — 文字単位で `char` span に分解し staggered アニメーション
5. **スクロールイベント** — ヘッダー `.on` クラス切り替え、ヒーロー背景テキストのパララックス
6. **FAQ アコーディオン** — `maxHeight` の動的変更で実装

### セクション構成
`#hero` → `#works` → `#about` → `#price` → `#flow` → `#voice` → `#faq` → `#contact` → `<footer>`

## デプロイ

GitHub Pages に直接デプロイ（ビルドステップなし）。`main` ブランチへの push が即時反映される。

## サイト再現の手順（必須）

参考サイトを再現する前に、以下のChrome拡張機能で必ず情報収集してから実装すること。

### インストール済み解析ツール

| ツール | 用途 |
|--------|------|
| Wappalyzer | 使用技術・フレームワーク・CMSの特定 |
| WhatFont | フォント名・サイズ・ウェイトの特定 |
| ColorZilla / Eye Dropper | 正確なカラーコード取得 |
| VisBug | CSS・レイアウト・余白の解析 |
| SEOquake | SEO構造の確認 |
| DevTools（Animationパネル・Computedタブ） | アニメーション・適用CSS確認 |

### 手順

1. **Wappalyzer** で技術スタックを確認（ライブラリ・フォント・CMS等）
2. **WhatFont** でフォント名・ウェイト・サイズを特定
3. **ColorZilla / Eye Dropper** でカラーコードを取得
4. **DevTools**（AnimationパネルとComputedタブ）でCSS・アニメーションを確認
5. 取得した情報を元に実装

**ユーザーにChrome拡張での調査結果を貼ってもらう分業が最も正確。**

---

## 作業ルール

- **コードは HTML/CSS で書く**（JS は既存のインラインスクリプトに追記する形で対応）
- **編集前に必ずバックアップを取る**（`index.html.bak` に上書きコピー）
- **修正後は必ず GitHub に push する**（`git add` → `git commit` → `git push`）
- **説明・コメントは日本語で書く**

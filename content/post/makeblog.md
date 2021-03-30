---
title: "GitHub Pages+Hugoを使ったblogサイト作成手順"
date: 2020-12-06T20:05:20+09:00
draft: false
tags: [ "HowTo", "Go" ]
---
## What's Hugo?
```
Hugo is one of the most popular open-source static site generators.
With its amazing speed and flexibility, Hugo makes building websites fun again.
```
- Hugoは人気のあるオープンソースの静的サイトジェネレータの1つ  
- Markdwonが使えてサイト構築が早いのが特徴です。
<!--more-->

## Install
今回は`go get`で入れました。  
goからじゃなくてsnapから入れる方法が公式的に推奨っぽいですね

```console
$ go get -u github.com/gohugoio/hugo
```
---

## Create
早速ブログを作ってみましょう。  
ブログの作成は`hugo new site`で作成できます。

```console
$ hugo new site hugo-blog
```

## ページを追加してみよう
ブログの雛形を完成を完成させたら、記事を追加しましょう！
```console
$ hugo new context/hello.md
```

こんな感じのファイルが作成されます。
```md
---
title: "Hello"
date: YYYY-MM-DD
draft: true
---
```
ちなみに、dateはローカルの時間で変化します。  
その後、`hugo`コマンドと叩くことで公開用のディレクトリが作成されます！

## テーマを反映させてみよう！
このままでは何も表示されないのでテーマを反映させてみましょう。  
今回は[Ananke](https://themes.gohugo.io/gohugo-theme-ananke/)を試してみましょう。

カレントディレクトリで以下のコマンドを叩いていきましょう。
```console
$ git init
$ git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
$ echo 'theme = "ananke"' >> config.toml
```
config.tomlは設定ファイルとなります。  
twitterやfacebookなどのソーシャルアカウントやGoogleAdsenseなどもこちらから行えます。
テーマが反映されたことを `hugo server`で確認しましょう。  
ここでサイトができていたらgithub pageの準備です。

## github pagesで確認しよう
手順としては以下のとおりです。
1. hugoコマンドで公開用ディレクトリを作成
2. repositoryを作成する。
3. pushして, setting -> GithubPagesからSourceでmaster(main)を選びます。
4. 選択後、その隣に `/(root)`が作成されるのでそこでpublicを選び数分待つとサイト完成です。

## まとめ
シンプルなサイトを作るとはWordPress以外の選択肢があるので今後はこのような幅が広がっていくといいですね！  
ちょっと最後のほうが雑になったのでリファクタするかもですm(_ _)m

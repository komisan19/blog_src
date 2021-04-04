---
# 記事タイトルの設定
title: "Atcoder1日目"
# 記事の説明
description : "毎日Atcoderの１日目"
# 作成日付の設定
date: "2021-04-04"
# 更新日
lastmod: "2021-04-04"
# 下書きモード（true=下書き、false=公開）
draft: false
# タグ
tags: ["atcoder", "go"]
# 目次設定（true=表示、false=非表示）
toc: true
---
久しぶりにAtcoderを解いていみました。
と言っても、a,bだけなのでそこまでではない。。。。

解いたものはこちらのコンテスト
https://atcoder.jp/contests/abc100

今回は解いた感想と改めて解いたテクニックなどを紹介しようと思います。(問題の解説は特にないですmm)

## A Happy Birthday!
この問題はシンプルに標準入力を使えば解ける問題です。
Goの標準入力は`fmt.Scan()`を使いことが多いと思いますが、今回は練習も兼ねて`bufio`を使ってみました。
`fmt.Scan()`を3×10^5以上行うとTLEになるそうなので、今後は`bufio`を使っていこうと思います。

bufioを使った書き方はこちらです。
```go
package main

import (
    "bufio"
    "fmt"
    "os"
)

func main() {
    r := bufio.NewReader(os.Stdin)

    var a, b int
    fmt.Fscan(r, &a, &b)
    ...

}
```

## B Ringo's Favorite Numbers
こちらは解法が複数あるのですが、私は全検索を行いました。
効率は悪いと思いますが、とりあえずはこちらで、、、

## 感想
シンプルに難しいと思います、、、
日々精進してがんばります!



---
# 記事タイトルの設定
title: "スクレイピングからOGP画像を作成できるCLIを作った話"
# 記事の説明
description : "こんにちは"
# 作成日付の設定
date: "2021-06-16"
# 下書きモード（true=下書き、false=公開）
draft: false
---
タイトル通りですが、スクレイピングからOGP画像を作成できるCLIを作って見ました。
<a href="https://github.com/komisan19/ogpgen"><img src="https://github-link-card.s3.ap-northeast-1.amazonaws.com/komisan19/ogpgen.png" width="300px"></a>

## 経緯
最近個人ブログを作成したのですが、　OGPをうまく入れられなかったのでスクレイピングからそこまで作成できたらいいなと思い作成しました。
## 使い方
READMEに記載されていますが、以下のとおりです。

```
    ogpgen command [arguments]
        --url string      Target url
	--filename string   output filename(ex: hoge.png...)
```

ogpenのあとにスクレイピングしたいurlを入力し、その後ファイル名を打てば出力してくれます。
現状、pngのみ対応しましたが他のフォーマットにも対応予定です。
試しにこの記事をスクレイピングしてみました。
{{< figure src="../../../static/images/hoge.png" title="OGP" class="center" width="500" height="500" >}}


## まとめ
まだまだ機能が少ないですが、これからも暇があれば作っていこうと思いますー


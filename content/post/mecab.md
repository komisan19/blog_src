---
title: "MecabをUbuntuに入れてみた"
date: 2020-12-10T00:48:54+09:00
draft: false
tags: [ "Mecab", "ubuntu", "メモ" ]
---
# Install
```console
$ sudo apt -y mecab libmecab-dev mecab-ipadic-utf8
```

ただこれだけだと、うまく解析できない。
例えば、特急はくたかってやると以下の通りなる
```console
$ mecab
特急はくたか
特急    名詞,一般,*,*,*,*,特急,トッキュウ,トッキュー
は      助詞,係助詞,*,*,*,*,は,ハ,ワ
く      動詞,自立,*,*,カ変・クル,体言接続特殊２,くる,ク,ク
た      助動詞,*,*,*,特殊・タ,基本形,た,タ,タ
か      助詞,副助詞／並立助詞／終助詞,*,*,*,*,か,カ,カ
EOS
```

そこで、[neologd](https://github.com/neologd/mecab-ipadic-neologd.git)をいれてみる
```console
$ git clone https://github.com/neologd/mecab-ipadic-neologd.git
$ cd mecab-ipadic-neologd
$ sudo bin/install-mecab-ipadic-neologd
```
最後の方に、mecabで使うときのpathが出るのでそれを`/etc/mecabrc`に記述する
```console
dicdir = /usr/lib/mecab/dic/mecab-ipadic-neologd
```
上記のパスは人によって異なるかもです

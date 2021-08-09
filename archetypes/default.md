---
# 記事タイトルの設定
title: "{{ replace .Name "-" " " | title }}"
# 記事の説明
description : "記事の説明"
# 下書きモード（true=下書き、false=公開）
# 作成日付の設定
date: "{{ now.Format "2006-01-02" }}"
# 更新日
lastmod: "{{ now.Format "2006-01-02" }}"
draft: true
# タグ
tags: ["", ""]
# 目次設定（true=表示、false=非表示）
toc: true
---



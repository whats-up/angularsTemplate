# anguler Template
これはangulerを使った簡単なクライアントwebサイトを作成するテンプレートです。
[gulp.js](http://gulpjs.com/)を使って以下の機能を実行できます。

- 簡易webサーバー
- [Jade](http://jade-lang.com/)のコンパイル
- [CoffeeScript](http://coffeescript.org/)のコンパイル
- [Stylus](http://learnboost.github.io/stylus/)のコンパイル

# 前準備
nodejs,npm,gulpがインストールされていることが条件です。  
動作確認のバージョンは以下の通りです。

- node.js : v0.10.25
- npm : 1.3.24
- gulp : CLI version 3.8.6

# 使い方
1, このリポジトリをcloneします。

```
git clone <url> <project name>
```

2, gitを削除します。必要なら新たにリポジトリを初期化します。
```
rm -rf .git
git init
```

3, npmで必要なモジュールをインストールします。
```
npm install
```
4, gulpを作動させます。
```
gulp
[12:15:10] Using gulpfile ~/path/to/angularsTemplate/gulpfile.js
[12:15:10] Starting 'webserver'...
[12:15:10] Webserver started at http://localhost:8000
[12:15:10] Starting 'watch'...
[12:15:10] Finished 'watch' after 11 ms
[12:15:10] Finished 'webserver' after 31 ms
[12:15:10] Starting 'default'...
[12:15:10] Finished 'default' after 8.55 μs
```

### webサーバー
上記のログに[Webserver started at http://localhost:8000]と出ています。
このURLにブラウザでアクセスすると
appディレクトリ内のindex.htmlがレンダリングされます。

### コンパイル
#### jade
[jade]ディレクトリに[.jade]という拡張子で保存したファイルは
htmlにコンパイルされて
[app/]ディレクトリに保存されます。
#### coffee script
coffeeディレクトリに[.coffee]という拡張子で保存したファイルは
java scriptにコンパイルされて
[app/js/]ディレクトリに保存されます。
#### stylus
stylusディレクトリに[.styl]という拡張子で保存したファイルは
cssにコンパイルされて
[app/css/]ディレクトリに保存されます。

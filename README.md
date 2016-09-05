# README

##プログラムの概要
Ruby on railsを利用して、TODO管理アプリを作成する

TODO_listの一覧表示、TODO_listの登録、TODO_listの削除、TODO_itemの一覧表示、TODO_itemの登録、TODO_itemの削除を行える

##使用言語、フレームワーク

Ruby 2.3.0 

Rails 5.0.0.1

##画面のキャプチャ
 ![ScreenShot](https://raw.github.com/Youfar/simplyTODO/master/screenshots/todo_screenshot1.jpg)
 ![ScreenShot](https://raw.github.com/Youfar/simplyTODO/master/screenshots/todo_screenshot2.jpg)
 ![ScreenShot](https://raw.github.com/Youfar/simplyTODO/master/screenshots/todo_screenshot3.jpg)
 
##起動方法
### Mac OS Xの場合
Terminalを起動し、リモートリポジトリからクローンする
```
$ git clone https://github.com/Youfar/simplyTODO.git
```
simplyTODOのルートディレクトリに移動して下さい。
```
cd simplyTODO
```
次のように入力して下さい。
```
rails server
```
pumaサーバが起動し、ブラウザ経由でアプリケーションにアクセスすることができるようになります。少し時間をかかるので少しこのまま待って下さい。Use Ctrl-C to stopの表示がされば起動完了です。
ブラウザからpumaへアクセスするには次のURLへアクセスして下さい。
```
http://localhost:3000/
```
##操作方法
 ![ScreenShot](https://raw.github.com/Youfar/simplyTODO/master/screenshots/todo_screenshot4.jpg)
 ![ScreenShot](https://raw.github.com/Youfar/simplyTODO/master/screenshots/todo_screenshot5.jpg)
 ![ScreenShot](https://raw.github.com/Youfar/simplyTODO/master/screenshots/todo_screenshot6.jpg)

##ソースコードの解説

https://youfar.github.io/2016/08/30/Todo-source-code-description/

##必要なライブラリ、ランタイム、環境
Mac OS X 10.10.9
###bootstrapを使うために
```
# javascript runtime. for compile less
gem 'therubyracer'
# make rails can use less.
gem 'less-rails'
# bootstrap
gem 'twitter-bootstrap-rails'
```

##課題や展望
###課題
1. Web開発の知識不足を感じました。使いやすいアプリを開発するために、html, css, javascriptの勉強もとても大事です。w3schoolの資料を使って、勉強を始めます。
2. 大規模なruby on railsシステムになるまで、まだいろんなことが足りないです。（業務ロジーク、利用人数、内容の大きさ、サーバーの安定性などなど）

###展望
1. RubyとRailsの中身をもっと深く理解します。
2. これからGTDの理念と組み合わせて、自分に役に立つ時間管理ツールを目指します。
3. RSpecでテストコードを追加します。

##自己評価、感想
1. Web開発の面白さを感じました。これから、このアプリを始め、Webアプリをどんどん開発します。
2. rails開発の便利を感じました。ただ、その中身を理解しないと、開発も不自由になるだと思います。

##参考文献、URL

[bootstrap on w3schools](http://www.w3schools.com/bootstrap/default.asp)

[bootstrap css](http://getbootstrap.com/css/#type-headings)

[RailsにTwitter Bootstrapの導入と簡易な使い方](http://ruby-rails.hatenadiary.com/entry/20140801/1406818800)

[Railsドキュメント](http://railsdoc.com)

[Ruby on Rails ガイド](http://railsguides.jp)
[Tod](https://github.com/jackc/tod)
[rubyで時刻だけのオブジェクトを扱いたい](http://qiita.com/hirokishirai/items/93ca9b566dddc815063c)


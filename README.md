# README

アプリケーション名
# shogun-authorized trading book 略：SATB

アプリケーション概要  
## 誰でも簡単に画像が投稿できる  

URL  
---
https://shogunatb.herokuapp.com/

テスト用アカウント  
---
- メールアドレス：test@test  
- パスワード：a123456  
- ID:admin  
- Pass:2222  

利用方法  
---  
### 写真投稿  
1. TOPページからユーザー登録をする。  
1. 投稿するボタンから内容（写真、タイトル、コメント）を入力し投稿する。  

### コメントする  
1. 一覧ページから気に入った写真にコメントする。  

### お気に入りを見つける
1. 気に入った投稿に「いいね」する。

アプリケーションを作成した背景  
---
写真投稿アプリは多くリリースされているものの、中高年層にとっては使い慣れていないことから登録のハードルが高く、途中で断念することが多いと判明。特に40歳以上の方は写真を撮るだけで満足してしまう方が大半である。
上記の課題から、「誰でも簡単に投稿できて、思い出を振り返ることのできるアプリ」を作成した。
写真は振り返るだけでその人が笑顔になれたり、人生が豊かになるツールを、40代以上の方々にも使っていただけるようになることを目的としている。
※アプリ名の「SATB」はアプリ作成者が旅行と御朱印集めが趣味であったため御朱印から名前をとったものである。

洗い出した要件  
---
https://docs.google.com/spreadsheets/d/1FK8oeyrRVcgyHEPr_Z045k9Lila6QUdsoR76Ko-h-QI/edit#gid=982722306  

実装した機能について  
---
TOPページ
[![Image from Gyazo](https://i.gyazo.com/6acf5fd3ec6a9e110c860fb51c30b9ee.gif)](https://gyazo.com/6acf5fd3ec6a9e110c860fb51c30b9ee)  

ログインページ
[![Image from Gyazo](https://i.gyazo.com/8440f6056f78d7b176f53002759cd493.jpg)](https://gyazo.com/8440f6056f78d7b176f53002759cd493)

新規登録ページ
[![Image from Gyazo](https://i.gyazo.com/1e145d316718819fd2048dbe7e20824d.jpg)](https://gyazo.com/1e145d316718819fd2048dbe7e20824d)


実装予定の機能  
---
 1. 携帯電話でも表示する様にする  
 1. いいね機能の実装

データベース設計  
---
[![Image from Gyazo](https://i.gyazo.com/789277290486a8b8e36c465871e3f8d7.png)](https://gyazo.com/789277290486a8b8e36c465871e3f8d7)

画面遷移図  
---
[![Image from Gyazo](https://i.gyazo.com/b87c0c99de11bfe18721467ead3f2c92.png)](https://gyazo.com/b87c0c99de11bfe18721467ead3f2c92)

開発環境  
---
Ruby,Ruby on Rails,HTML,CSS

工夫したポイント  
---
1. 極力無駄を省き必要最低限の情報だけで登録できる。  
1. Topページ、ログインページ、新規登録ページを単調にならないように、使用する人が見て好印象を持てるように作り込んだ。  
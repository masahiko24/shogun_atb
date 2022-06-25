# README

アプリケーション名
# shogun-authorized trading book

アプリケーション概要  
## 誰でも簡単に画像が投稿できる  

URL  
---
https://shogunatb.herokuapp.com/

テスト用アカウント  
---
- メールアドレス：test@test  
- パスワード：123456  
- ID:admin  
- Pass:2222  

利用方法  
---
1. 新規登録  
1. ログイン  
1. マイページから写真、タイトル、コメントを投稿する。  
1. 登録できればログアウトする。

アプリケーションを作成した背景  
---
アプリ作成者が旅行と御朱印集めが趣味であった。写真ばかり溜まっていきどこかに投稿しようとしても登録が難しかったり、面倒な登録が必要だったりして、結局途中で断念してしまうことが多々あった。写真ばかりが溜まっていって見返すことが少なくなってしまっては、思い出がもったいないので、簡単に投稿できて今までの思い出が振り返られるようなアプリを作りたいと思いました。

洗い出した要件  
---
https://docs.google.com/spreadsheets/d/1FK8oeyrRVcgyHEPr_Z045k9Lila6QUdsoR76Ko-h-QI/edit#gid=982722306  

実装予定の機能  
---
 1. 携帯電話でも表示する様にする  
 1. Google Mapと連携する  
 1. いいね機能の実装

データベース設計  
---
[![Image from Gyazo](https://i.gyazo.com/789277290486a8b8e36c465871e3f8d7.png)](https://gyazo.com/789277290486a8b8e36c465871e3f8d7)

画面遷移図  
---
[![Image from Gyazo](https://i.gyazo.com/44d18507479efffa001ffc0cb933e184.jpg)](https://gyazo.com/44d18507479efffa001ffc0cb933e184)

開発環境  
---
Ruby,Ruby on Rails,HTML,CSS

工夫したポイント  
---
1. 極力無駄を省き必要最低限の情報だけで登録できる。  
1. Topページ、ログインページ、新規登録ページを単調にならないように、使用する人が見て好印象を持てるように作り込んだ。  
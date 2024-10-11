# アプリケーション名
### TEAM. ルビー少年野球団
---
# アプリケーション概要
### チームに所属している保護者が、スケジュールの詳細や出欠状況を容易に確認できるアプリケーション。
---
# URL
### https://team-mzds.onrender.com
---
# テスト用アカウント
- BASIC認証ID：admin
- BASIC認証パスワード：2222
- メールアドレス：10@com
- パスワード：101010
---
# 利用方法
---
### 新規スケジュール投稿
#### １．ログイン後、トップページのヘッダーから「スケジュール投稿」をクリックする。
#### ２．全ての項目に情報を入力し、「保存する」をクリックする。
#### ３．トップページに自動で遷移されるので、入力したスケジュールが表示されていることを確認する。<br>　　※本日の日付より古い日付のスケジュールはトップページには表示されず、「過去の対戦」の<br>　　　ページにのみ表示されるよう実装した。
---
### コメント投稿
#### １．ログイン後、トップページのスケジュール一覧より、コメントを投稿したいスケジュールをクリックする。
#### ２．スケジュールの詳細画面に遷移し、画面下部にてコメントの確認および投稿ができる。
#### ３．コメント欄をクリックし、コメントを入力後、「送信する」をクリックする。
---
# アプリケーションを作成した背景
#### １．チーム内の連絡手段はＬＩＮＥのグループを使用している。しかし、そのＬＩＮＥのグループ内ではスケジュール以外の<br>　　あらゆる連絡事項や個別の質問・コメントが乱雑に混ざっており、スケジュールに関する情報のみを探すのに苦労している。

#### ２．ＬＩＮＥにスケジュールを投稿する機能はあるが、投稿後１ヵ月で自動削除されるため、<br>　　過去のスケジュールを振り返ることができない。
---
# 実装した機能についてのGIFおよびその説明

### １．トップページからスケジュールを選択して、詳細画面ページを表示した後、<br>　　編集ページを表示することができる。
[![Image from Gyazo](https://i.gyazo.com/fa5dd159dde534fbc7101ba444237d9b.gif)](https://gyazo.com/fa5dd159dde534fbc7101ba444237d9b)

---

### ２．トップページからスケジュールを選択して、詳細画面ページを表示した後、<br>　　ページ下部にコメント一覧が表示される。
[![Image from Gyazo](https://i.gyazo.com/06e4af60d67cd92b9165e71f1417adfe.gif)](https://gyazo.com/06e4af60d67cd92b9165e71f1417adfe)

---

### ３．トップページから「過去の対戦」をクリックして、本日以前のスケジュールのみが<br>　　「過去対戦日」の順に表示される。
[![Image from Gyazo](https://i.gyazo.com/3f7a6199c63a0849d14fe85f576a38a9.gif)](https://gyazo.com/3f7a6199c63a0849d14fe85f576a38a9)

---

### ４．新規スケジュールを登録した後、対戦日の近いスケジュールから<br>　　順にトップページに表示される。
[![Image from Gyazo](https://i.gyazo.com/cec8751b8ad4689ed426590ca98eddd3.gif)](https://gyazo.com/cec8751b8ad4689ed426590ca98eddd3)

---

<!-- 
| アプリ機能1 | アプリ機能1 |
|:-----------:|:------------:|
| [![Image from Gyazo](https://i.gyazo.com/fa5dd159dde534fbc7101ba444237d9b.gif)](https://gyazo.com/fa5dd159dde534fbc7101ba444237d9b) | [![Image from Gyazo](https://i.gyazo.com/06e4af60d67cd92b9165e71f1417adfe.gif)](https://gyazo.com/06e4af60d67cd92b9165e71f1417adfe) |
| アプリ機能の説明が入ります。アプリ機能の説明が入ります。 | アプリ機能の説明が入ります。アプリ機能の説明が入ります。 |

</br>

| アプリ機能3 | アプリ機能4 |
|:-----------:|:------------:|
| [![Image from Gyazo](https://i.gyazo.com/3f7a6199c63a0849d14fe85f576a38a9.gif)](https://gyazo.com/3f7a6199c63a0849d14fe85f576a38a9) | [![Image from Gyazo](https://i.gyazo.com/cec8751b8ad4689ed426590ca98eddd3.gif)](https://gyazo.com/cec8751b8ad4689ed426590ca98eddd3) |
| アプリ機能の説明が入ります。アプリ機能の説明が入ります。 | アプリ機能の説明が入ります。アプリ機能の説明が入ります。 | -->


# 洗い出した要件
#### １．プライベートな内容を含むので、ＢＡＳＩＣ認証およびログインユーザーのみアクセス可能にする。
#### ２．スケジュール投稿者が責任をもって最後まで管理するよう、投稿者のみ更新できるようにする。
#### ３．コメントはログインユーザーであれば誰でも投稿できるようにする。
#### ４．混同しないよう、今後のスケジュールと過去のスケジュールを同時に表示させないようにする。
---
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/254650e8be1d945c6039943cb2123c4c.png)](https://gyazo.com/254650e8be1d945c6039943cb2123c4c)

---
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/fd18c1358b2c21e8fe29c0d758e6422a.png)](https://gyazo.com/fd18c1358b2c21e8fe29c0d758e6422a)

---
# 開発環境
- フロントエンド
- バックエンド
- テキストエディタ
---
# 今後、実装したい機能
- 権限が付与された方のみ新規スケジュールを投稿できるよう、権限管理（GemのCanCanCan）を実装する。
- 勝敗のカラムをデータベースに追加して、そこから勝率を算出し、「過去の対戦」ページに表示させる。
- 参加・不参加の入力ボタンを実装する。
- 試合の思い出として、画像も保存できるよう実装する。
- JavaScriptを使用して、見た目のデザイン性を高くする。
---
# 苦労した点
### 日付によってトップページに表示させる内容を変えるなど、カリキュラムに無かった実装に挑戦した際は、何度もエラーや意図しない動きに遭遇しました。問題を解決するため、Chat-GPTに多大な情報を読み込ませたり、ネットの情報などを何度も試したりして、何とか最終的に自分の目的を達成することができました。ここまで苦労はしましたが、今では達成感の方が強く残っております。



<!-- 
# テーブル設計

## users テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| email               | string     | null: false, unique: true      |
| encrypted_password  | string     | null: false                    |
| name_kanji          | string     | null: false                    |
| name_katakana       | string     | null: false                    |

### Association

- has_many :schedules
- has_many :comments

## schedules テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| status_id           | integer    | null: false                    |
| match_day           | date       | null: false                    |
| match_week_id       | integer    | null: false                    |
| opponent            | string     | null: false                    |
| location            | string     | null: false                    |
| start_time          | integer    | null: false                    |
| meeting_time        | integer    | null: false                    |
| deadline            | date       | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| content             | text       | null: false                    |
| schedule            | references | null: false, foreign_key: true |
| user                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :schedule -->


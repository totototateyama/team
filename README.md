# アプリケーション名
#### TEAM. ルビー少年団
---
# アプリケーション概要
#### チームに所属している保護者が、スケジュールの詳細や出欠状況を容易に確認できるアプリケーション。
---
# URL
#### https://team-mzds.onrender.com
---
# テスト用アカウント
- BASIC認証パスワード：2222
- BASIC認証ID：admin
- メールアドレス：10@com
- パスワード：101010
---
# 利用方法
### 新規スケジュール投稿
###### １．ログイン後、トップページのヘッダーから「スケジュール投稿」をクリックする。
###### ２．全ての項目に情報を入力し、「保存する」をクリックする。
###### ３．トップページに自動で遷移されるので、入力したスケジュールが表示されていることを確認する。<br>　　※本日の日付より古い日付のスケジュールはトップページには表示されず、「過去の対戦」の<br>　　　ページにのみ表示されるよう実装。
---
### コメント投稿
###### １．ログイン後、トップページから、コメントを投稿したいスケジュールをクリックする。
###### ２．スケジュールの詳細画面に遷移し、画面下部にてコメントの確認および投稿ができる。
###### ３．コメントを投稿する場合はコメント欄をクリックし、コメントを入力後、「送信する」をクリックする。
---
# アプリケーションを作成した背景
###### １．チーム内の連絡方法はLINEのグループがメイン。しかし、そのLINEグループ内ではスケジュール以外の<br>　　あらゆる連絡事項や個別の質問・コメントが乱雑に混ざっており、欲しい情報を探すのに苦労している。

###### ２．LINEにもスケジュールを管理する機能はあるが、作成後１ヵ月で自動削除されるため、過去の<br>　　スケジュールを振り返りたい時には不便。
---
# 洗い出した要件
###### １．プライベートな内容も含むので、BASIC認証およびログインユーザーのみアクセス可能にする。
###### ２．スケジュール投稿者が責任をもって最後まで管理させるため、投稿者のみが更新できるようにする。
###### ３．コメントはログインユーザーであれば誰でも投稿できるようにする。
###### ４．混同しないよう、今後のスケジュールと過去のスケジュールを同時に表示させないようにする。
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
- 権限が付与された方のみスケジュールを投稿できるよう、権限管理の実装（GemのCanCanCan）
- 勝敗のカラムをデータベースに追加して、その情報から勝率を算出して過去の対戦画面に表示させる
- 参加・不参加の入力ボタンを実装する
- 試合の思い出として、画像も保存できるよう実装する
- JavaScriptを使用して、見た目のデザイン性を高くする
---
# 苦労した点
#### 日付によってトップページに表示させる内容を変えるなど、カリキュラムに無かった実装に挑戦した際は、何度もエラーや意図しない動きに遭遇しました。問題を解決するためにChat-GPTに多大な情報を読み込ませたり、ネットの情報などを何度も試したりして、何とか最終的に目的を達成することができました。苦労はしましたが、達成感の方が今では強く残っています。



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


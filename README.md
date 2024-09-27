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
- belongs_to :schedule
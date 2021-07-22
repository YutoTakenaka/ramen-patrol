# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| email    | string | null: false,unique: true |
| password | string | null: false |
| nickname     | string | null: false |


### Association

- has_many : posts



## posts テーブル
| Column | Type   | Options     |
| ------ | ------ | ----------- |
| ramen_name  | string | null: false |
| shop_name| string| null: false |
| place | string   | null: false |
| price  | integer       |  null: false          |
| soup_id  | integer       |  null: false           |
| noodle_id | integer       |  null: false         |
| caption  | text       |  null: false        |
| user   | references |             |

### Association

- belongs_to : users
- belongs_to : post_tag

## tags テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string    |        |

### Association

- belongs_to : post_tag

## post_tags テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| tag  | references |             |
| post | references |          |
### Association

- has_many :posts
- has_many :tags

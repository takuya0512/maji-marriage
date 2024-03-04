# アプリケーション名 
maji marriage
# アプリケーション概要  
結婚式の席次表を簡単かつ効果的に作成し、最適な席次を見つける手助けをします。席ごとにゲストの期待値を入力し、全体の実現期待値を算出して提案します。
## URL 
https://maji-marriage.onrender.com
# テスト用アカウント
- ログイン: [email:test@test.com/Pass:test1234]
- Basic認証: [ID:admin/Pass:1234]
# 利用方法  
1. **新規登録またはログイン**
   - アプリにアクセスし、新規登録または既存ユーザーとしてログインします。
2. **席次表の作成**
   - テンプレートから席次表のパターンを選択し、ゲストの名前や情報、期待値を入力します。
3. **実現期待値の確認**
   - 入力された期待値を基に、全体の実現期待値が算出され、表示されます。
4. **保存と管理**
   - 途中で席次表を保存し、後で編集や複製が可能です。作成した席次表は一覧表示され、管理が容易です。
# アプリケーションを作成した背景
結婚した友人や知人たちが、結婚式の席次表を作成する際、招待するゲストや席の配置を検討することが非常に複雑で煩雑であると述べており、このプロセスを改善する手段を見つける必要性を感じました。  
結婚式の準備を日常的な会話から始め、誰を招待するかなどのアイディアを手軽に記録できるアプリがあれば、実際の席次表の準備段階で慌てることなく、効率的に計画を進めることができると考えました。
# 実装予定の機能 
洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載

## 開発環境
- HTML
- CSS
- Ruby (Ruby on Rails)
- Java Script
- MySQL
- Github
- render

# 工夫したポイント  
制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。
# 改善点 
より改善するとしたらどこか、それはどのようにしてやるのか。
# 制作時間  
アプリケーションを制作するのにかけた時間。

# テーブル設計

## users テーブル

| Column             | Type       | Options                   |
| ------------------ | ---------- | ------------------------- | 
| groom              | string     | null: false               |
| bride              | string     | null: false               |
| email              | string     | null: false, unique: true |
| encrypted_password | string     | null: false               |

### Association

- has_many :seatings

## seatings テーブル

| Column        | Type       | Options                        |
| ------------  | ---------- | -------------------------      | 
| pattern       | string     | null: false                    |
| table_code    | string     | null: false                    |
| position_code | string     | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :guests

## guests テーブル

| Column        | Type       | Options                        |
| ------------  | ---------- | ------------------------------ | 
| name          | string     |                                |
| seating       | references | null: false, foreign_key: true |

### Association

- belongs_to :seating

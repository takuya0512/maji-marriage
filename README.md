# アプリケーション名 
maji marriage
# アプリケーション概要  
結婚式の席次表を簡単かつ効果的に作成し、最適な席次を見つける手助けをします。席ごとにゲストの期待値を入力し、全体の実現期待値を算出して提案します。
# URL 
https://maji-marriage.onrender.com
# テスト用アカウント
- ログイン: [email:test@test.com/Pass:test1234]
- Basic認証: [ID:admin/Pass:1234]
# 利用方法  
1. **新規登録またはログイン**
   - アプリにアクセスし、新規登録または既存ユーザーとしてログインします。
2. **パターンを選択**
   - 最大人数や配置の異なる3つのテンプレートから席次表のパターンを選択。
3. **選択した席次表パターンに情報入力**
   - ゲストの名前を入力し保存します。
4. **保存と管理**
   - 途中で席次表を保存し、作成した席次表は一覧表示され、管理が容易です。
# アプリケーションを作成した背景
結婚した友人や知人たちが、結婚式の席次表を作成する際、招待するゲストや席の配置を検討することが非常に複雑で煩雑であると述べており、このプロセスを改善する手段を見つける必要性を感じました。  
結婚式の準備を日常的な会話から始め、誰を招待するかなどのアイディアを手軽に記録できるアプリがあれば、実際の席次表の準備段階で慌てることなく、効率的に計画を進めることができると考えました。
# 実装予定の機能 
- ゲストごとに入力できる情報の追加（住所、アレルギー情報など）
- ゲストごとの来場期待値の設定機能追加。最終的に席次表の実現期待値の算出を可能にする。

# 開発環境
- HTML
- CSS
- Ruby (Ruby on Rails)
- Java Script
- MySQL
- Github
- render

# 工夫したポイント  
結婚式という華やかなイベントがテーマなので、フロント面で結婚式をイメージしたアニメーションを導入し、シンプルでおしゃれなアプリになるように意識しました。データの保存方法はname1.2.3とするのではなく、テーブル番号や、テーブル内のポジションのカラムを作り、管理しやすい構造にしました。
# 改善点 
パターン選択ではなく、もっと自由に配置や人数入力欄を作成できるUIを実現する。
例えばドラッグ＆ペーストでパーツを自由に配置できるようにしたり、デザインもユーザーの好きなようにカスタマイズできるようにする。
これにはJava Scriptをもっと導入することでユーザーの操作性を上げる必要がある。また、自由度が上がればそのデータの保存方法も改善する必要がある。

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

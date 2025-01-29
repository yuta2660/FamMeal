class CreateMealDelays < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_delays do |t|
      t.integer :family_id, null: false  # 家族ID（外部キー）
      t.integer :user_id, null: false    # ユーザーID（外部キー）
      t.string :meal_type, null: false   # 食事の種類（朝・昼・夜）
      t.date :date, null: false          # 食事の日付
      t.time :expected_time, null: false # 標準の食事時間（家族設定）
      t.time :late_time                  # 遅くなる場合の食事時間

      t.timestamps
    end

    # インデックスの追加（検索パフォーマンス向上）
    add_index :meal_delays, [:family_id, :date]
    add_index :meal_delays, [:user_id, :date, :meal_type], unique: true

    # 外部キー制約の追加
    add_foreign_key :meal_delays, :families
    add_foreign_key :meal_delays, :users
  end
end

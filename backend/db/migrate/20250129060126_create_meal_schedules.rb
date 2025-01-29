class CreateMealSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_schedules do |t|
      t.integer :family_id, null: false  # 家族グループID（外部キー）
      t.integer :user_id, null: false    # ユーザーID（外部キー）
      t.string :meal_type, null: false   # 食事の種類（朝・昼・夜）
      t.date :date, null: false          # 予定の日付

      t.timestamps
    end

    # インデックスの追加（検索パフォーマンス向上）
    add_index :meal_schedules, [:family_id, :date]
    add_index :meal_schedules, [:user_id, :date, :meal_type], unique: true

    # 外部キー制約の追加（SQLite ではオプション）
    add_foreign_key :meal_schedules, :families
    add_foreign_key :meal_schedules, :users
  end
end

class AddMealTimesToFamilies < ActiveRecord::Migration[6.1]
  def change
    add_column :families, :breakfast_time, :time, default: "07:00:00"
    add_column :families, :lunch_time, :time, default: "12:00:00"
    add_column :families, :dinner_time, :time, default: "19:00:00"
  end
end

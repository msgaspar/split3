class CreateExpenses < ActiveRecord::Migration[8.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.date :date
      t.decimal :value, precision: 8, scale: 2
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

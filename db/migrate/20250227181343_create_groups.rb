class CreateGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :groups do |t|
      t.string :name

      t.timestamps
    end

    create_table :groups_users, id: false do |t|
      t.belongs_to :user
      t.belongs_to :group
    end
  end
end

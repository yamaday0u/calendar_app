class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :password_digest
      t.integer :user_id
      t.string :user_name

      t.timestamps
    end
  end
end

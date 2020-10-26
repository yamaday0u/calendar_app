class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.datetime :start_time
      t.datetime :end_time
      t.integer :user_id
      t.string :user_name
      t.integer :group_id
      t.string :group_name

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    add_column :posts, :ss1_enabled, :boolean, :default true
      t.string :title
      t.text :content
      

      t.timestamps
    end
  end
end

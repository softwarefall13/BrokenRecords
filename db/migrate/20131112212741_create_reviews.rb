class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :rating
      t.references 'Post'
      t.references 'Review'
      t.timestamps
    end
  end
end

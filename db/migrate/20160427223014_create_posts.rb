class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :p_title
      t.text :p_content
      t.timestamp :p_date
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

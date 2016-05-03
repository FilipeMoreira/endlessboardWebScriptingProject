class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :u_name
      t.string :u_email
      t.string :u_password
      t.string :u_picture

      t.timestamps null: false
    end
  end
end

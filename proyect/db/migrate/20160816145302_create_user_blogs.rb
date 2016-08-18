class CreateUserBlogs < ActiveRecord::Migration
  def change
    create_table :user_blogs do |t|
      t.integer :document
      t.string :name
      t.string :lastname
      t.integer :phone
      t.string :email

      t.timestamps null: false
    end
  end
end

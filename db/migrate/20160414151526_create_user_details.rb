class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :address
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end

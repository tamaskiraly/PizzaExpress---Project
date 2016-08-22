class AddPhoneToUsers < ActiveRecord::Migration
  
def up
add_column :users, :phone, :integer
end
def down
remove_column :users, :phone
end
end

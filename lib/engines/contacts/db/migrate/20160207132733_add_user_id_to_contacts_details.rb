class AddUserIdToContactsDetails < ActiveRecord::Migration
  def change
    add_column :contacts_details, :user_id, :integer
  end
end

# This migration comes from contacts (originally 20160207132733)
class AddUserIdToContactsDetails < ActiveRecord::Migration
  def change
    add_column :contacts_details, :user_id, :integer
  end
end

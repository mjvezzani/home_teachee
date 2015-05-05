class RemoveContactInfoIdFromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :contact_info_id, :integer
  end
end

class AddHomeTeacheeIdToAddresses < ActiveRecord::Migration
  def change
    add_reference :addresses, :home_teachee, index: true
  end
end

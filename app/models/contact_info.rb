class ContactInfo < ActiveRecord::Base

  has_one :address
  belongs_to :home_teachee

end

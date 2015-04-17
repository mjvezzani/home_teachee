class HomeTeachee < ActiveRecord::Base

  has_one :contact_info
  has_many :histories
  has_many :issues

end

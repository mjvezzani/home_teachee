class Address < ActiveRecord::Base

  belongs_to :contact_info

  validates :street_number, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

end

class ContactInfo < ActiveRecord::Base

  has_one :address
  belongs_to :home_teachee

  validates :email, presence: true
  validates_format_of :email, :with => /.+@.+\..+/i
  validates :phone1, presence: true

end

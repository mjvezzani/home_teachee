class ContactInfo < ActiveRecord::Base

  belongs_to :home_teachee

  validates :email, presence: true
  validates_format_of :email, :with => /.+@.+\..+/i
  validates :phone1, presence: true

  def second_phone
    phone2 ? phone2 : 'Not Available'
  end

end

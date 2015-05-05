class HomeTeachee < ActiveRecord::Base

  has_one :contact_info
  has_one :address
  has_many :histories
  has_many :issues

  validates :first_name, presence: true
  validates :last_name, presence: true

  delegate :street_number, :to => :address
  delegate :phone1, :to => :contact_info
  delegate :second_phone, :to => :contact_info
  delegate :email, :to => :contact_info


  def name
    [first_name, last_name].join(' ')
  end

end

class HomeTeachee < ActiveRecord::Base

  has_one :contact_info, :dependent => :destroy
  has_one :address, :dependent => :destroy
  has_many :histories, :dependent => :destroy
  has_many :issues, :dependent => :destroy

  accepts_nested_attributes_for :contact_info
  accepts_nested_attributes_for :address

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

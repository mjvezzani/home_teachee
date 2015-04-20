class HomeTeachee < ActiveRecord::Base

  has_one :contact_info
  has_many :histories
  has_many :issues

  validates :first_name, presence: true
  validates :last_name, presence: true

  def name
    [first_name, last_name].join(' ')
  end

end

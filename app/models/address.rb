class Address < ActiveRecord::Base

  belongs_to :home_teachee

  validates :street_number, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

  def formatted_address
    "<p>#{self.street_number}</p><p>#{self.city} #{self.state} #{self.zipcode}</p>".html_safe
  end

end

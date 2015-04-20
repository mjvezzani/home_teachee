class History < ActiveRecord::Base

  belongs_to :home_teachee

  validates :visit_summary, presence: true, length: {minimum: 20}

end

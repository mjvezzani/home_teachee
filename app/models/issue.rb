class Issue < ActiveRecord::Base

  belongs_to :home_teachee

  validates :title, presence: true,
                    uniqueness: true,
                    length: {minimum: 6}
  validates :description, presence: true,
                          length: {minimum: 16}

end

class Venue < ActiveRecord::Base

  has_many :challenges

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true

end

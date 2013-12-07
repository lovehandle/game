class Challenge < ActiveRecord::Base

  # ASSOCIATIONS

  belongs_to :venue
  has_many :rewards
  has_many :attempts

  accepts_nested_attributes_for :rewards

  # VALIDATIONS

  validates :title, presence: true
  validates :description, presence: true
  validates :venue, presence: true

  # INSTANCE METHODS

  def venue_title
    venue.try(:title)
  end

end

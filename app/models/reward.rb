class Reward < ActiveRecord::Base

  # ASSOCIATIONS

  belongs_to :challenge

  # VALIDATIONS

  validates :title, presence: true
  validates :description, presence: true
  validates :challenge, presence: true

end

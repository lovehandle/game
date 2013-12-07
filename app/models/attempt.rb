class Attempt < ActiveRecord::Base

  # ASSOCIATIONS

  belongs_to :challenge
  belongs_to :player
  has_many :proofs

  accepts_nested_attributes_for :proofs

  # VALIDATIONS

  validates :challenge, presence: true
  validates :player, presence: true

end

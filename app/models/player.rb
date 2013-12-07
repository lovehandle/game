class Player < ActiveRecord::Base

  # CONSTANTS

  VALID_GENDERS = %w( male female other ).freeze

  # ASSOCIATIONS

  has_many :attempts

  # VALIDATIONS

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true, inclusion: { in: VALID_GENDERS }

end

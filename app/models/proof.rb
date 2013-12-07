class Proof < ActiveRecord::Base

  # CONSTANTS

  PENDING_STATE  = "pending".freeze
  ACCEPTED_STATE = "accepted".freeze
  REJECTED_STATE = "rejected".freeze
  DEFAULT_STATE  = PENDING_STATE

  # SCOPES

  scope :pending,  -> { where(state: PENDING_STATE) }
  scope :accepted, -> { where(state: ACCEPTED_STATE) }
  scope :rejected, -> { where(state: REJECTED_STATE) }

  # ASSOCIATIONS

  belongs_to :attempt

  # VALIDATIONS

  validates :state, presence: true
  validates :attempt, presence: true

  # INSTANCE METHODS

  def accept!
    update_attributes(:state, ACCEPTED_STATE)
  end

  def reject!
    update_attributes(:state, REJECTED_STATE)
  end

  def reset!
    update_attributes(:state, DEFAULT_STATE)
  end

  def accepted?
    state == ACCEPTED_STATE
  end

  def rejected?
    state == REJECTED_STATE
  end

  def pending?
    state == PENDING_STATE
  end

end

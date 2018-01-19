class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  MAX_REGISTRATION_NUMBER= 4

  has_many :events
  has_one :profile
  has_many :registrations, dependent: :destroy
  has_many :booked_events, through: :registrations, source: :event

  def full_name
    return profile.full_name if profile?

    email
  end

  def profile?
    profile.present? && profile.persisted?
  end

  def guest_count?
    if guest_count <= MAX_REGISTRATION_NUMBER
      true
    else
      false
    end
  end
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :events
  has_one :profile

  def full_name
    return profile.full_name if profile?

    email
  end

  def profile?
    profile.present? && profile.persisted?
  end
end

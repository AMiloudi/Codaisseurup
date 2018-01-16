class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  def valid_date?
    if starts_at >= ends_at
      return false
    else
      return true
    end

    validates :name, presence: true
    validates :description, presence: true, length: { maximum: 500 }
    validates :starts_at, presence: true
    validates :ends_at, validates: valid_date?
  end
end

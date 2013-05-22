class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { minimum: 1, maximum: 100}

  belongs_to :user
  validates :user_id, presence: true
end

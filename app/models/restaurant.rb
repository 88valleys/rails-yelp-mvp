class Restaurant < ApplicationRecord
  # establishes a one to many relationship between resto and reviews
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, exclusion: { in: ['neptunian'], message: "%{value} is not valid" }
end

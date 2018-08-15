class Service < ApplicationRecord
  belongs_to :user
  has_many :appointments
  validates :user, :description, :price, :location, :title, :category, presence: :true
end

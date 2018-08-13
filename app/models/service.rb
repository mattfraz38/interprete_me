class Service < ApplicationRecord
  belongs_to :user
  validates :user, :description, :price, :location, :title, :category, presence: :true
end

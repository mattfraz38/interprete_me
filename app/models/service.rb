class Service < ApplicationRecord
  belongs_to :user
  has_many :appointments
  mount_uploader :photo, PhotoUploader
  validates :user, :description, :price, :location, :title, :days, presence: :true
end

class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :user, :service, :start_day, presence: :true
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader
  has_many :appointments, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :service_appointments, through: :services, source: :appointments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

=begin  def service_appointments
    services.map { |s| s.appointments}
  end
=end
end

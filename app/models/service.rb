class Service < ApplicationRecord
  belongs_to :user
  has_many :appointments
  mount_uploader :photo, PhotoUploader
  validates :user, :description, :price, :location, :title, :category, presence: :true

  include PgSearch
  # pg_search_scope :global_search,
  #   against: [ :title, :description, :category, :location, :language ],
  # using: {
  #   tsearch: { prefix: true }
  # }

  pg_search_scope :location_search,
    against: :location,
  using: {
    tsearch: {prefix: true }
  }

  pg_search_scope :title_desc_search,
    against: [ :title, :description ],
  using: {
    tsearch: { prefix: true }
  }


end

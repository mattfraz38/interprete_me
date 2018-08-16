class Service < ApplicationRecord
  belongs_to :user
  has_many :appointments
  validates :user, :description, :price, :location, :title, :category, presence: :true

  include PgSearch
  pg_search_scope :search_by_title_desc_cat,
    against: [ :title, :description, :category ],
  using: {
    tsearch: { prefix: true }
  }


end

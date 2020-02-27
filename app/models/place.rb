class Place < ApplicationRecord
  has_many_attached :photos
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id' #belongs to owner, association
  validates :name, presence: true
  validates :description, presence: true
  validates :options, presence: true
  has_many :bookings
  validates :city, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ['habitation', 'industriel', 'exterieur', 'culturel']}
  include PgSearch::Model
  pg_search_scope :search_places_all,
                  against: %i[city category price],
                  using: {
                    tsearch: { prefix: true }
                  }
end

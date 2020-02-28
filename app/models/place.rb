class Place < ApplicationRecord
  geocoded_by :address
  has_many_attached :photos
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id' #belongs to owner, association
  validates :name, presence: true
  validates :description, presence: true
  # validates :options, presence: true, inclusion: { in: ['Restauration', 'Electricité', 'Autorisations', 'Ménage', 'Fumeur', 'Wifi', 'Piscine', 'WC', 'Accessibilité', 'Matériel Audiovisuel', 'Meublé' ]}
  has_many :bookings
  validates :city, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ['habitation', 'industriel', 'exterieur', 'culturel']}
  # mount_uploader :photo, PhotoUploader

  include PgSearch::Model
  pg_search_scope :search_places_all,
                  against: %i[city category price],
                  using: {
                    tsearch: { prefix: true }
                  }
  after_validation :geocode, if: :will_save_change_to_address?

end

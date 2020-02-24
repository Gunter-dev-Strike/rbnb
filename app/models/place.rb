class Place < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :city, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :category, :inclusion => { in: ['habitation', 'industriel', 'exterieur', 'culturel']}
end

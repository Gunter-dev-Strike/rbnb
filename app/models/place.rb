class Place < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id' #belongs to owner, association,
  has_many :bookings
  validates :city, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ['habitation', 'industriel', 'exterieur', 'culturel']}
end

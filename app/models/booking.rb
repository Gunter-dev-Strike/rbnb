class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :place
  validates :date, presence: true
  # validates :name, presence: true
  #ajouté une validation scopé, une place peut etre reservé une seule fois
end

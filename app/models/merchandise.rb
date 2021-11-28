class Merchandise < ApplicationRecord
  has_one_attached :photo
  monetize :price_cents
  has_many :orders
end

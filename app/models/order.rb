class Order < ApplicationRecord
  belongs_to :user
  belongs_to :merchandise
  monetize :amount_cents
end

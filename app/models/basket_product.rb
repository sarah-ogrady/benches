class BasketProduct < ApplicationRecord
  belongs_to :bench_merchandise
  belongs_to :basket
end

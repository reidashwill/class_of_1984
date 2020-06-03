class Item < ApplicationRecord
  belongs_to :location
  has_one_attached :item_photo
end
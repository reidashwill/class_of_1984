class Location < ApplicationRecord
  has_many :items
  has_one_attached :location_photo
  #   def self.pagination_request(page)
  #     paginate :per_page => 10, :page => page
  # end
end
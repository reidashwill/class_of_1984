class Location < ApplicationRecord
  has_many :items
  #   def self.pagination_request(page)
  #     paginate :per_page => 10, :page => page
  # end
end
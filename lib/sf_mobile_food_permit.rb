require "sf_mobile_food_permit/version"
require "unirest"

module SfMobileFoodPermit
  class Restaurant

    attr_reader :applicant, :address, :food_items, :permit_number, :expiration

    def initialize(hash)
      @applicant = hash["applicant"]
      @address = hash["address"]
      @food_items = hash["fooditems"]
      @permit_number = hash["permit"]
      @expiration = hash["expirationdate"]
    end

    def self.all
      restaurants_array = Unirest.get("https://data.sfgov.org/resource/6a9r-agq8.json").body
      restaurants = []
      restaurants_array.each do |restaurant_hash|
        restaurants << Location.new(restaurant_hash)
      end

      return restaurants
    end
  end
end

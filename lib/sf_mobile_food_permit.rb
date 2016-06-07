require "sf_mobile_food_permit/version"

module SfMobileFoodPermit
  class Restaurant
    def initialize(hash)
      @applicant = hash["applicant"]
      @address = hash["address"]
      @food_items = hash["fooditems"]
      @permit_number = hash["permit"]
      @expiration = hash["expirationdate"]
    end

    def self.all
      restaurants_array = 
    end
  end
end

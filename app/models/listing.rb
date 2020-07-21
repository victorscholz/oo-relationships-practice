class Listing
    attr_reader :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select { |trip| trip.listing == self }
    end

    def guests
        self.trips.map { |trip| trip.guest }
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        all.select { |listing| listing.city == city }
    end

    def self.most_popular
        # most_popular = @@all.max do |a,b|
        #     a.Trip.trip_count <=> b.Trip.trip_count
        most_popular = self.all.max_by { |listing| listing.trip_count }    
    end

end
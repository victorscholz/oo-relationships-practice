require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Listings
list1 = Listing.new("Japan")
list2 = Listing.new("France")
list3 = Listing.new("Greece")


# Guests
guest1 = Guest.new("Victor")
guest2 = Guest.new("Lexxi")
guest3 = Guest.new("Colton")

# Trips
Trip.new(list1, guest1)
Trip.new(list2, guest2)
Trip.new(list3, guest3)
Trip.new(list3, guest3)

binding.pry
0
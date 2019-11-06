# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

m1 = Movie.new("The Untold Epic of Robert Smalls")
m2 = Movie.new("Snoop Dogg Commentates UK Elections")
m3 = Movie.new("Ever Cat video ever. The Movie")

v1 = Viewer.new("Chuck")
v2 = Viewer.new("Todd")
v3 = Viewer.new("Larry")

r1 = Review.new(v1, m1, 8)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

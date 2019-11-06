# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Jaws")
m2 = Movie.new("Avatar")
m3 = Movie.new("Frozen")

v1 = Viewer.new("Rotten Tomatoes")
v2 = Viewer.new("IMBD")
v3 = Viewer.new("Rolling Stone")

r1 = Review.new(v1, m1, 4)
r2 = Review.new(v2, m2, 5)
r3 = Review.new(v3, m3, 5)
r4 = Review.new(v1, m2, 3)
r5 = Review.new(v3, m1, 2)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("user1")
v2 = Viewer.new("user2")
v3 = Viewer.new("user3")
v4 = Viewer.new("user4")

m1 = Movie.new("movie1")
m2 = Movie.new("movie2")
m3 = Movie.new("movie3")
m4 = Movie.new("movie4")

r1 = Review.new(v1, m1, 1)
r2 = Review.new(v2, m2, 2)
r3 = Review.new(v3, m3, 3)
r4 = Review.new(v4, m4, 4)
r5 = Review.new(v1, m2, 1)
r6 = Review.new(v1, m3, 1)







# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Movie 1")
m2 = Movie.new("Movie 2")
m3 = Movie.new("Movie 3")

v1 = Viewer.new("Viewer 1")
v2 = Viewer.new("Viewer 2")
v3 = Viewer.new("Viewer 3")

r1 = Review.new(v1, m1, "rating 1")
r2 = Review.new(v2, m2, "rating 2")
r3 = Review.new(v3, m3, "rating 3")





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

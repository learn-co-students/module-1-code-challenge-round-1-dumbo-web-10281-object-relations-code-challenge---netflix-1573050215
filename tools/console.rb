# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Taxi Driver")
movie2 = Movie.new("Goodfellas")

viewer1 = Viewer.new("Jim")
viewer2= Viewer.new("Stan")

review1 = Review.new(viewer1, movie1, 8)
review2 = Review.new(viewer2, movie2, 7)


viewer3 = Viewer.new("bill")
review3 = Review.new(viewer3, movie1, 10)

viewer1.reviewed_movie?(movie1)

viewer1.rate_movie(movie2, 9)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

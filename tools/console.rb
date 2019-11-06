# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

movie_01 = Movie.new("Titanic")
movie_02 = Movie.new("Joker")
movie_03 = Movie.new("Coffee Society")

viewer_01 = Viewer.new("Guligena")
viewer_02 = Viewer.new("Kaishaer")
viewer_03 = Viewer.new("Conrad")

review_01 = Review.new(viewer_01, movie_01, 5)
review_02 = Review.new(viewer_02, movie_01, 4)
review_03 = Review.new(viewer_03, movie_02, 5)
review_04 = Review.new(viewer_02, movie_02, 5)
review_05 = Review.new(viewer_03, movie_03, 3)
review_06 = Review.new(viewer_02, movie_03, 2)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

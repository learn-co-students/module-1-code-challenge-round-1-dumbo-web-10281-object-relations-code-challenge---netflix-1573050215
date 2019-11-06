# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

para = Movie.new("Parasite")
ave = Movie.new("Avengers")

fra = Viewer.new("Frank")
rog = Viewer.new("Roger Ebert")

frank_parasite = Review.new(fra, para, 8.0)
rog_para = Review.new(rog, para, 2)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

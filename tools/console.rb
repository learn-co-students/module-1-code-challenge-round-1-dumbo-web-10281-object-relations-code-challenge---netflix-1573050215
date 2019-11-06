# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Titanic")
m2 = Movie.new("Pokemon")
m3 = Movie.new("FSN")

v1 = Viewer.new("trololol")
v2 = Viewer.new("randomAcc123")
v3 = Viewer.new("AllGoodNameTaken")

r1 = Review.new(v1, m1, 1)
r2 = Review.new(v2, m1, 4)
r3 = Review.new(v3, m2, 2)
r4 = Review.new(v2, m3, 6)
r5 = Review.new(v3, m1, 8)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

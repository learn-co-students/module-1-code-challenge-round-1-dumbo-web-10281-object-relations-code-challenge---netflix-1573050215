# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("The Heart is Deceitful Above All Things")
m2 = Movie.new("Eternal Sunshine of the Spotless Mind")
m3 = Movie.new("Memento")

v1 = Viewer.new("black-cat")
v2 = Viewer.new("carnage")
v3 = Viewer.new("miles-morales")

r1 = Review.new("black-cat", "The Heart is Deceitful Above All Things", 8)
r2 = Review.new("carnage", "Eternal Sunshine of the Spotless Mind", 2)
r3 = Review.new("carnage", "Memento", 10)
r4 = Review.new("miles-morales", "The Heart is Deceitful Above All Things", 7) 
r5 = Review.new("miles-morales", "Eternal Sunshine of the Spotless Mind", 9.5) 
r6 = Review.new("miles-morales", "Memento", 10) 




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

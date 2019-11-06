# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

bob = Viewer.new("Bob")
rob =  Viewer.new("Rob")
slob = Viewer.new("Slob")

it = Movie.new("IT")
donnie_darko = Movie.new("Donnie Darko")
doctor_sleep = Movie.new("Doctor Sleep")



r1 = Review.new(bob,it,4)
r2 = Review.new(bob,donnie_darko,10)
r3 = Review.new(bob,doctor_sleep,1)
r4 = Review.new(rob,it,3)
r5 = Review.new(rob,donnie_darko,10)
r6 = Review.new(rob,doctor_sleep,10)
r7 = Review.new(slob,it,1)
r8 = Review.new(slob,doctor_sleep,1)
r9 = Review.new(slob,donnie_darko,2)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

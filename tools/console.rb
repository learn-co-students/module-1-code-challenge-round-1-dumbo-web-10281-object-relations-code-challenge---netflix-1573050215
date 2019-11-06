# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new('Griffin')
v2 = Viewer.new('Dominic')
v3 = Viewer.new('Sadia')

m1 = Movie.new('The Great Gatsby')
m2 = Movie.new('The Greast Crosby')
m3 = Movie.new('Her')

r1 = v1.rate_movie(m1, 90)
r2 = v1.rate_movie(m2, 80)
r3 = v2.rate_movie(m3, 50)
r4 = v2.rate_movie(m1, 97)
r5 = v3.rate_movie(m2, 98)
r6 = v3.rate_movie(m3, 13)
r7 = v3.rate_movie(m1, 86)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

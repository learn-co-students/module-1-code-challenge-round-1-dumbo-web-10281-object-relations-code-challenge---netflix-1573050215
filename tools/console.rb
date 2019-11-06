# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

m1 =Move.new("Scarface",1000)
m2 =Move.new("Topgun",2000)
m3 =Move.new("Pearl Harbor",3000)

R1 = Review.new()





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

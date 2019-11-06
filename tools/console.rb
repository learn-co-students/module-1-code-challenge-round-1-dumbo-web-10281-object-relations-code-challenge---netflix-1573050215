# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spiderman = Movie.new("Spiderman")
ironman = Movie.new("Iron Man")
dr_strange = Movie.new("Dr. Strange")
hulk = Movie.new("Hulk")

doc_oct = Viewer.new("Doc. Oct")
thanos = Viewer.new("Thanos")
venom = Viewer.new("Venom")
loki = Viewer.new("Loki")

mediocre =Review.new(thanos, ironman, 5)
horrible = Review.new(thanos, hulk, 2)
pleasent= Review.new(doc_oct,spiderman,7)
amazing= Review.new(venom, spiderman, 10)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

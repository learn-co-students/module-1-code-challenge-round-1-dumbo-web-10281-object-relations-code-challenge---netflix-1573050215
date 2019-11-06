# require the Bundler module
require 'bundler/setup'

# require all gems defined in the Gemfile
Bundler.require

# require all files in the top-level app directory
require_rel '../app'

m1 = Movie.new("Robocop")
m1 = Movie.new("Star Wars")
m1 = Movie.new("Enter the Dragon")

v1 = Viewer.new("Siskel")
v2 = Viewer.new("Ebert")
v3 = Viewer.new("Ron")

r1 = Review.new("Good")
r2 = Review.new("Bad")
r3 = Review.new("Ugly")

# require the Bundler module
require 'bundler/setup'

# require all gems defined in the Gemfile
Bundler.require

# require all files in the top-level app directory
require_rel '../app'


matilda = Movie.new("Matilda")

betty = Viewer.new("Betty")

review1 = Review.new(betty, matilda, 10)

binding.pry 
0
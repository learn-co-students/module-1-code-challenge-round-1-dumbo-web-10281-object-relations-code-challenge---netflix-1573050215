class Review
	attr_accessor :rating
	attr_reader :viewer, :movie

	@@all = []

	def initialize(viewer, movie, rating)
		@viewer = viewer
		@movie = movie
		@rating = rating

		@@all << self
	end

	def self.all
		@@all
	end

	#Helper function...just too lazy to write this out in viewer
	#Plus i feel like this is just more useful as a helper
	#Only downside is, before use, the review must exist
	#However with this, i can update from the movie side as well...
	#Then again this shouldn't be used from the movie side...
	#I can prob write this from the viewer as well...
	#....and it prob will be shorter...
	# def self.update_review(viewer, movie, rating)
	# 	#first find all review of this movie
	# 	@@all.select do |review|
	# 		review.movie == movie
	# 	#2nd find the review by the person
	# 	end.find do |review|
	# 		review.viewer == viewer
	# 	#last update the review
	# 	end.rating = rating
	# end
end

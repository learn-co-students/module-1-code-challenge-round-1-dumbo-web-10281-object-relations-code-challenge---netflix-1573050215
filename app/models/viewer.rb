class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def reviews
  	#returns all the review under this viewer
  	Review.all.select do |review|
  		review.viewer == self
  	end
  end

  def reviewed_movies
  	#returns all the movie review under this viewer
  	reviews.map do |review|
  		review.movie
  	end
  end

  def reviewed_movie?(movie)
  	#returns `true` if the `Viewer` has reviewed this 
  	#`Movie` (if there is a `Review` instance that has 
  	#this `Viewer` and `Movie`), returns `false` otherwise
  	reviewed_movies.each do |movies|
  		if movies == movie
  			return true
  		end
  	end
  	false
  end

  def rate_movie(movie, rating)
  	#Check if user already reviewed this movie
  	#if not, create new one, if did, update
  	if reviewed_movie?(movie)
  		#code to update review
  		#Why did i even think it was easier from the review class...
  		#Review.update_review(self, movie, rating)
  		update_review(movie, rating)
  	else
  		#code to create new review
  		Review.new(self, movie, rating)
  	end
  end

  ##############  Helper function    ###############
  #Rewritting this from the viewer side
  #instead of from the review as class method
  def update_review(movie, rating)
  	reviews.find do |review|
  		review.movie == movie
  	end.rating = rating
  end



end

class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
  	#returns all the review under this movie
  	Review.all.select do |review|
  		review.movie == self
  	end
  end

  def reviewers
  	#returns all the viewer review under this movie
  	reviews.map do |review|
  		review.viewer
  	end
  end

  def average_rating
  	#returns the avg of all rating to this movie
  	total_rating = 0.0

  	all_review = reviews
  	all_review.each do |review|
  		total_rating += review.rating
  	end

  	total_rating / all_review.count
  end

  def self.highest_rated
  	#return the movie with the highest avg rating
  	highest_rate = -1
  	best_movie = "Error"
  	@@all.each do |movie|
  		if highest_rate < movie.average_rating
  			highest_rate = movie.average_rating
  			best_movie = movie
  		end
  	end

  	best_movie
  end
end

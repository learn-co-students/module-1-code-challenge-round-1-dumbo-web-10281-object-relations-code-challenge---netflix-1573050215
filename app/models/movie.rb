class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end ### initialize


  def self.all
    @@all
  end ###all
  

  def reviews
      Review.all.select do |review|
        review.movie == self
      end ##select

  end ##reviews


  def reviewers
      reviews.map do |review|
        review.viewer
      end ##map
  end ##reviewers


  def average_rating
  
      rating_array = reviews.map{|review|
      review.rating}
      rating_array.inject{ |sum, el|
    sum + el }.to_f/rating_array.size
      
  end ###average rating


  def self.highest_rated
      self.all.max_by{|movie|
      movie.average_rating}
  
  end ## highest_rated

  
end ### Class Movie

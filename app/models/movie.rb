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
    Review.all.select do |my_review_instance|
      self == my_review_instance.movie 
    end 
  end 

  def reviewers 
    reviews.map do |my_review|
      my_review.viewer
    end 
  end 

  def average_rating
    ratings = reviews.map do |my_review_instance|
      my_review_instance.rating 
    end 
    ratings.average 
  end
  
  def self.highest_rated
      self.all.max_by do |movie_instance|
        movie_instance.average_rating 
      end 
  end 

end

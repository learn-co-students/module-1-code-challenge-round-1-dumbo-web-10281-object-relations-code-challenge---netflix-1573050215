class Viewer
  attr_accessor :username

  @@all = []


  def initialize(username)
    @username = username
    @@all << self
  end ### initialize


  def self.all
    @@all
  end ### all
  

  def reviews
      Review.all.select do |review|
        review.viewer == self
      end ##select
  end ## reviews


  def reviewed_movies
      reviews.map do |review|
        review.movie
      end ##map
  end ## reviewed movies


  def reviewed_movie?(movie)
       reviewed_movies.include?(movie)
  
  end ##reviewed_movie


  def rate_movie(movie, rating)
      if self.reviewed_movie?(movie)
            movie_review = reviews.find{|review| review.movie == movie}
            movie_review.rating = rating

            return movie_review
      else
          Review.new(self, movie, rating)
      end ## if else
      
  end ## rate_movie


end ### Class Viewer

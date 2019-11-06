class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.movie == self}
  end

  def reviewers
    reviews.map { |review| review.viewer }.uniq
  end

  def average_rating
    reviews.map { |review| review.rating }.sum.to_f / reviews.length
  end

  def self.highest_rated
    # ratings_array = Review.all.map{ |review| review.movie.average_rating }
    # highest_rated_movie = ratings_array.max
    # Review.all.find { |review| review.movie.average_rating == highest_rated_movie}.movie

    Review.all.max_by {|review| review.movie.average_rating}.movie
  end


end

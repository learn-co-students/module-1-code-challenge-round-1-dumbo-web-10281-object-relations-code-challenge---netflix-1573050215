class Movie
  attr_accessor :title

  @@all_movies = []

  def initialize(title)
    @title = title
    self.class.all_movies << self
  end

  def title
    @title
  end

  def self.all
    @@all_movies
  end

  def movie_reviews
    @@all_reviews.map{ |movie|
      review.movie == title
    }
  end

  def movie_viewer
    @@all_movies.map{ |viewer|
      review.movie == movie.viewer
    }
  end

  def average_rating
    @@all_reviews.sum{ |movie|
      review.rating
    }
  end

  def highest_rated
      @@all_reiews.max_by{ |movie|
        average_rating
      }
  end

end

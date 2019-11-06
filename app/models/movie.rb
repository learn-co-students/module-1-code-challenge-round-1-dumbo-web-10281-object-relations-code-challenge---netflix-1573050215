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

  def title
    title.select do |title|
      title.movie == self 
    end 
  end 

    def Movie.all
      self.all.map do |instance|
        instance.movie 
      end 
    end 





end

#Movie#initialize(title)`
#   - `Movie` is initialized with a title (string)
#   - title **can be** changed after the `Movie` is initialized
# - 

`Movie#title`
#   - returns the `Movie`'s title


 - `Movie.all`
#   - returns an array of all the `Movie` instances that have been initialized

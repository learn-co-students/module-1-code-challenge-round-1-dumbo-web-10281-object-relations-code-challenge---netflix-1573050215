class Viewer
  attr_accessor :username

  @@all_viewers = []

  def initialize(username)
    @username = username
    self.class.all_viewers << self
  end

  def username
    @username
  end

  def self.all
    @@all_viewers
  end

  def review
      @@all_reviews.map{ |viewer|
        review.username == username
      }
  end

  def reviewed_movies
    @@all_movies.map{ |viewer|
      movie.username == username
    }
  end

  def reviewed_movie?
    if username.movie ==
      
    else
      Review.new
    end
  end

  def rate_movie
    
  end
  
end

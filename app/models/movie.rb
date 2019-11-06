class Movie
  attr_accessor :title

  @@all_movies = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all_movies
  end

  def reviews
    Review.all.select { |review|
    review.movie == self
    }
  end

  def reviewers ##(UNFINISHED)
    Viewer.all.select { |viewer|
    viewer.movie == self
    }
  end

    def self.highest_rated ##(UNFINISHED)
      Review.all.max_by { |rating_instance|
    rating_instance.rating
      }
      #return movie
    end



end

class Viewer
  attr_accessor :username

  @@all_viewers = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all_viewers
  end
  
  def reviews
    Review.all.select { |review|
    review.viewer == self
    }
  end

  def reviewed_movies ###(UNFINISHED)
    Review.all.select { |review|
    review.movie <<<<< array of all movies 
    }   
  end

  def reviewed_movie?(movie)

  end



end

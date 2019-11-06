class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |instance|
      instance.viewer == self
    end
  end
  
  def reviewed_movies
    reviews.map do |instance|
      instance.movie
    end
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if(!reviewed_movie?(movie))
      Review.new(self, movie, rating)
    else
      self.reviews.each do |instance|
        if(instance.movie == movie)
          instance.rating = rating
        end
      end
    end
  end
  
end

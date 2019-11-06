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
    Review.all.select{|reviews|reviews.viewer == self}
  end
  
  def reviewed_movies
    reviews.map{|movies|movies.viewer}
  end

  def reviewed_movie?(movie)
    if reviews.movie == movie
      return true
    else 
    return false
    end
  end
end

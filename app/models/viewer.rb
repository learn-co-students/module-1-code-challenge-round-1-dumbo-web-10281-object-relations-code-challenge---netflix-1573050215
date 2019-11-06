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
    Review.all.select {|reviews| reviews.viewer == self}
  end
  
  def reviewed_movies
    Movie.all.map {|reviewed_movies| reviewed_movies.reviews == self}
  end

  def reviewed_movies?(movie)
    reviewed_movies

end

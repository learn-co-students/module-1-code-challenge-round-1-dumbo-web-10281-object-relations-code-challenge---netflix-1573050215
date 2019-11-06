# #### Viewer

class Viewer


  #   - username **can be** changed after the Viewer is initialized
  attr_accessor :username

  @@all = []

  # - `Viewer#initialize(username)`
  #   - `Viewer` is initialized with a username (string)
  def initialize(username)
    @username = username
    self.class.all << self
  end

  # - `Viewer.all`
  # - returns an array of all the Viewer instances that have been initialized
  def self.all
    @@all
  end


  # - `Viewer#reviews`
  #   - returns an array of `Review` instances associated with the `Viewer` instance.
  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  # - `Viewer#reviewed_movies`
  #   - returns an array of `Movie` instances reviewed by the `Viewer` instance.
  def reviewed_movies
    self.reviews.map {|review| review.movie}
  end

end

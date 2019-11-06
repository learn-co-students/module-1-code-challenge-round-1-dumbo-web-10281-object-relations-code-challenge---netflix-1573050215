

# #### Review

class Review

  # - `Review#rating`
  #   - returns the rating for the `Review` instance
  # - `Review#viewer`
  #   - returns the `Viewer` instance associated with the `Review` instance
  # - `Review#movie`
  #   - returns the `Movie` instance associated with the `Review` instance
  attr_reader :viewer, :movie
  attr_accessor :rating
  # - `Review.all`
  #   - returns an array of all initialized `Review` instances
  @@all = []

  def self.all
    @@all
  end

  # - `Review#initialize(viewer, movie, rating)`
  #   - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)
  def initialize (viewer, movie, rating)
    @rating = rating
    @movie = movie
    @viewer = viewer

    self.class.all << self
  end






end


#### Movie

class Movie

  # - `Movie#title`
  #   - returns the `Movie`'s title
  #   - title **can be** changed after the `Movie` is initialized
  attr_accessor :title



  @@all = []


  # - `Movie#initialize(title)`
  #   - `Movie` is initialized with a title (string)
  def initialize(title)
    @title = title
    self.class.all << self
  end

  # - `Movie.all`
  #   - returns an array of all the `Movie` instances that have been initialized
  def self.all
    @@all
  end


  # - `Movie#reviews`
  #   - returns an array of all the `Review` instances for the `Movie`.
  def reviews
    Review.all.select {|review| review.movie == self}
  end

  # - `Movie#reviewers`
  #   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def reviewers
    self.reviews.map {|review| review.viewer}
  end

end

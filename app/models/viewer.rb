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

  # - `Viewer#reviewed_movie?(movie)`
  #   - a `Movie` instance is the only argument
  #   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
  def reviewed_movie? (movie)
    if reviews.find{|review| review.movie == movie}
      true
    else
      false
    end
  end # I cant remember which method lets you check if an array contains a specific thing, or like true/false if a block of code test works

  # - `Viewer#rate_movie(movie, rating)`
  #   - a `Movie` instance and a rating (number) are passed in as arguments
  #   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
  #   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
  def rate_movie (movie, rating)
    if reviewed_movie?(movie)
      reviews.find{|review| review.movie == movie}.rating = rating
    else
      Review.new(self, movie, rating)
    end 
  end




end

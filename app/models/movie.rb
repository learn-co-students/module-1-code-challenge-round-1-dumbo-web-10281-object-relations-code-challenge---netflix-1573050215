
#### Movie

class Movie

  # - `Movie#title`
  #   - returns the `Movie`'s title
  #   - title **can be** changed after the `Movie` is initialized
  attr_accessor :title



  @@all = []
  # - `Movie.all`
  #   - returns an array of all the `Movie` instances that have been initialized
  def self.all
    @@all
  end

    # - `Movie#initialize(title)`
    #   - `Movie` is initialized with a title (string)
    def initialize(title)
      @title = title
      self.class.all << self
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

  # - `Movie#average_rating`
  #   - returns the average of all ratings for the `Movie` instance
  #   - to average ratings, add all ratings together and divide by the total number of ratings.

  def average_rating
    # if self.reviews == true
    if reviews.length == 0
      0
    else
    reviews.map{|rev| rev.rating}.sum/reviews.count
  end
  # end
  end

  # - `Movie.highest_rated`
  #   - returns the `Movie` instance with the highest average rating.
  def self.highest_rated
    self.all.max_by{|rev| rev.average_rating}
  end

end

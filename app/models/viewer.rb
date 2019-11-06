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
    # i want to go through all of the reviews and 
    # use select to only have all the reviews by the 
    # user that im calling it on which is self because 
    # we are in the user class
    # viewer_reviews= []
    
    Review.all.select do |viewer|
      viewer.review == self
    end

  end #end of def reviews


  def reviewed_movies
    Review.all.map do |movie|
      movie.movie == self
    end


  end


end

class Review
 
attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
  
end










#viewer class code
# class Viewer
#     attr_accessor :username
  
#     @@all = []
  
#     def initialize(username)
#       @username = username
#       self.class.all << self
#     end
  
#     def self.all
#       @@all
#     end
    
#     def reviews 
#       # i want to go through all of the reviews and 
#       # use select to only have all the reviews by the 
#       # user that im calling it on which is self because 
#       # we are in the user class
      
#       Review.all.select do |viewer|
#         viewer.review == self
#       end
  
#     def reviewed_movies
      
  
#     end
  
  
#   end
  
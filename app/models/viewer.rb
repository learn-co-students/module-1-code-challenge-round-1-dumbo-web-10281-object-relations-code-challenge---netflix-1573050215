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


  def my_reviews 
    Review.all.select do |review_instance|
      self == review_instance.viewer 
    end 
  end 

  def reviewed_movie?(movie)
    my_reviews.each do |review_instance|
      if review_instance.movie == movie
        return true 
      else 
        false
      end  
    end
  end  
    
    def rate_movie(movie, new_rating)
        my_reviews.each do |review_instance|
          if review_instance.movie == movie
             review_instance.rating = new_rating 
          else
          binding.pry  
          Review.new(self, movie, new_rating)
          end 
        end  
    end
    
end

class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select do |instance|
      instance.movie == self
    end 
  end 

  def reviewers 
    reviews.map do |instance|
      instance.viewer 
    end 
  end 

  def average_rating 
    # reviews.sum { |instance| instance.rating } / reviews.count

    ## integer or float?
    reviews.sum { |instance| instance.rating } * 1.00 / reviews.count

  end 

  def self.highest_rated    
    total_rating_hash = {}
    Review.all.each do |review|
      if total_rating_hash[review.movie]
        total_rating_hash[review.movie] += review.rating
      else
        total_rating_hash[review.movie] = review.rating
      end 
    end 
    total_counting_hash = {}
    Review.all.each do |review|
      if total_counting_hash[review.movie]
        total_counting_hash[review.movie] += 1
      else
        total_counting_hash[review.movie] = 1
      end 
    end 
    total_rating_hash.each do |rating_instance|
      rating_instance[1] * 1.00 / total_counting_hash[rating_instance[0]]
    end 
    total_rating_hash.max_by { |i| i[1] }.first

      

  end 


end

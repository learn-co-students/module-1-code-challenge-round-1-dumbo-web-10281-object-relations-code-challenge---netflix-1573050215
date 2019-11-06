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
    total = reviews.map do |instance|
      instance.rating
    end.sum

    (total / reviews.length).round
  end

  def self.highest_rated
    highest = self.all.map do |instance|
      instance.average_rating
    end.max

    self.all.find do |movie_instance|
      movie_instance.average_rating == highest
    end
  end

end

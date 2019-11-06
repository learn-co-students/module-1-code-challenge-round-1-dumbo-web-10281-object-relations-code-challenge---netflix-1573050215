class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    # self.class.all << self
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    @title
  end

  def reviews
    Review.all.select do |rev|
      rev.movie == self
    end
  end

  # def reviewers

  # end
# WISH THERE WAS MORE TIME!!! 

end

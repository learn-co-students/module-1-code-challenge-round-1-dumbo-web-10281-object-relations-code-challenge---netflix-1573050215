class Review
    attr_accessor :viewer, :movie, :rating
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end ### initialize

    def self.all
        @@all
    end ### all

    


end ##class review

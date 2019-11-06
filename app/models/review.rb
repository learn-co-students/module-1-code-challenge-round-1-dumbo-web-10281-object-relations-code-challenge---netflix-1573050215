class Review

    @@all_reviews = []

    attr_accessor :viewer, :movie, :rating

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all_reviews << self
    end

    def self.all
        @@all_reviews
    end

end

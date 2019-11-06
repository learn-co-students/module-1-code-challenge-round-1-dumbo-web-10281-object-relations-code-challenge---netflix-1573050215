require_relative 'pry'

class Review

    @@all_reviews = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @title = movie
        @rating = rating
        self.class.all_reviews << self
    end

    def rating
        @rating
    end

    def Review.all
        @@all_reviews
    end

    def viewer
        @username
    end

    def movie
        @title
    end

end

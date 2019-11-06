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

    def rating
        @rating
    end

    # def viewer
    #     Viewer.all.select do |name|
    #         name.review == self
    #         # binding.pry
    #     end
    # end

    # def movie
    #     Movie.all.select do |movie|
    #         movie.review == self
    #     end
    # end




end

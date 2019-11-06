class Review
   attr_reader :viewer, :movie, :rating  
   @@all =[]




        def initialize (viewer,movie,rating)
            @viewer = viewer 
            @movie  = movie 
            @rating = rating 
            @@all << self 
        end 

        def self.all 
        @@all 
        end

     def rating 
        rating.select do |rating|
            rating.review == self 
        end
    end 

    def Review.all 
        Review.all.map do |instance|
            instance.review
        end 
    end 
    
    def viewer 
        viewer.select do |viewer|
            viewer.review == self 
        end 
    end  

    def movie 
        movie.select do |movie|
            movie.review == self 
        end 
    end 
end 




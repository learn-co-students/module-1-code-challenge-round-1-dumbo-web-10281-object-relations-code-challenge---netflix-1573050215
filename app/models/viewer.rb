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
  
end


# `Viewer#username`
# - returns the Viewer's username
    def username 
      viewer.select|viewer|
      viewer.username == self 


    def Viwer.all 
      Viewer.all.map do |instance|
        instance.username
      end 
    end 
        

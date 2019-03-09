class Cult

    @@all = []

    attr_reader :cult_name, :location, :founding_year, :slogan, :minimum_age

    def initialize(cult_name, location, founding_year, slogan, minimum_age)
        @cult_name  = cult_name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        @@all << self
    end 

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
        if (self.minimum_age < followers.age)
            puts "You're too young, boiiii"
        end 
    end

    def cult_population
        BloodOath.all.select {|bo| bo.cult == self}.map {|bo|bo.follower}.count
    end 

    def self.find_by_name(name)
        @@all.find {|cult| cult.cult_name == name}
    end 

    def self.find_by_location(location)
        @@all.find {|cult| cult.location == location}
    end 

    def self.find_by_founding_year(founding_year)
        @@all.find {|cult| cult.founding_year == founding_year}
    end 

    def average_age
       a = Follower.all.map {|fl| fl.age}
       b = a.reduce(:+)
       c = b / a.size
    end 

    def my_followers_mottos
        motto = self.followers.map {|fl| fl.life_motto}
        # motto = Follower.all.map {|fl| fl.life_motto}
        # puts motto
    end

    def self.least_popular
        cult_pop = @@all.min_by {|cult| cult.followers.size}
    end 

    def self.most_common_location
       cult_loc = @@all.collect {|cult| cult.location}.min   
    end 

    # Helper method, not part of deliverable. 
    def followers
        BloodOath.all.select {|bo| bo.cult == self}.map {|bo| bo.follower}
    end 
     

end 
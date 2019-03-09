class BloodOath

    @@all = []

    attr_accessor :cult, :follower, :initiation_date
    
    def initialize(cult, follower)
        @cult = cult
        @follower = follower 
        @initiation_date = "#{Time.new()}"
        @@all << self
    end 

    def self.all
        @@all
    end

    def self.first_oath
        @@all.select {|bo| bo.follower}.first
    end 

end 
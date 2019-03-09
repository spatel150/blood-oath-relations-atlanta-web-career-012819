class Follower

    @@all = []

    attr_reader :name, :age, :life_motto

    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto
        @@all << self
    end 

    def self.all
        @@all
    end 

    def cults
        BloodOath.all.select {|bo| bo.follower == self}.map{|bo|bo.cult}
    end 

    def join_cult(cult)
        BloodOath.new(cult, self)
    end 

    def self.of_a_certain_age(age)
        @@all.find_all {|foll| foll.age > age}
    end 

    def my_cults_slogans
        slogans = Cult.all.map {|cu| cu.slogan}
        puts slogans
    end 

    def self.most_active
        @@all.max_by {|fl| fl.cults.size} #Use cults as a helper method. 
    end 

    def self.top_ten
        ten = @@all.sort_by {|fl| fl.cults.size}.reverse 
        ten[0..9] 
    end 




end 
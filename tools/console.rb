require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

scientology = Cult.new("Scientology", "San Francisco", 1980, "We will make you rich and famous", 24)
drizzy_fan_club = Cult.new("Drizzy", "Los Angeles", 2014, "OVOXO", 18)
musk_cult = Cult.new("Musk", "Los Angeles", 2017, "Tesla is now affordable at $35K!!", 17)
bond_fan_club = Cult.new("Bond", "Los Angeles", 2001, "Bond, James Bond", 21)
pewdiepie_club = Cult.new("Pews", "Sweden", 2018, "More memes, more reviews, boi", 19)

cruise = Follower.new("Tom Cruise", 25, "I looooove sciencetology..., umm I mean science!")
kiki = Follower.new("Kiki", 23, "Kiki, do you love me?")
tesla_owner = Follower.new("Tim", 25, "This car is amazing!!!")
james = Follower.new("James Bond", 32, "Stirred, not shaken")
felix = Follower.new("Felix", 24, "Elon Musk hosted meme review") 
bieber = Follower.new("Justin", 25, "I married a model, my life is awesome")
jake = Follower.new("Jake", 31, "Jake from State Farm")


bo_1 = BloodOath.new(scientology, cruise)
bo_2 = BloodOath.new(drizzy_fan_club, kiki) 
bo_3 = BloodOath.new(musk_cult, tesla_owner) 
bo_4 = BloodOath.new(bond_fan_club, james) 
bo_5 = BloodOath.new(pewdiepie_club, felix) 
bo_6 = BloodOath.new(bond_fan_club, felix) 
bo_7 = BloodOath.new(bond_fan_club, cruise) 
bo_8 = BloodOath.new(bond_fan_club, tesla_owner) 
bo_9 = BloodOath.new(bond_fan_club, felix) 
bo_10 = BloodOath.new(bond_fan_club, james) 
bo_11 = BloodOath.new(musk_cult, cruise) 
# bo_12 = BloodOath.new(drizzy_fan_club, kiki) 
bo_13 = BloodOath.new(pewdiepie_club, james) 
bo_14 = BloodOath.new(bond_fan_club, felix) 
bo_15 = BloodOath.new(musk_cult, kiki) 
bo_16 = BloodOath.new(musk_cult, james) 
# bo_17 = BloodOath.new(scientology, felix)
bo_18 = BloodOath.new(musk_cult, james)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

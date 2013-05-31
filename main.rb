require "pry"

require_relative "shelter"
require_relative "pets"
require_relative "clients"
require_relative "admin"

shelter = nil

@s1 = Shelter.new("414 Brannan St.", {}, {})
c1 = Clients.new("John", "m", 49)
c2 = Clients.new("Guy", "m", 25)
c3 = Clients.new("Sumeet", "m", 28)
c4 = Clients.new("Connie", "f", 21)
p1 = Pets.new("Bobbi", "cat", "m", 2, :available,["ball"])
p2 = Pets.new("Furry", "cat", "f", 3, :available,["disc"])
p3 = Pets.new("Stinky", "dog", "m", 1, :available,["turd", "bone"])

@s1.pets["Bobbi"] = p1
@s1.pets["Furry"] = p2
@s1.pets["Stinky"] = p3
@s1.clients["John"] = c1
@s1.clients["Guy"] = c2
@s1.clients["Sumeet"] = c3
@s1.clients["Connie"] = c4
puts ""
puts "(l)ist available pets, list (c)lients, (a)dopt a pet, (g)ive up a pet for adoption, a(d)min, or (q)uit: "
input = gets.chomp.downcase
puts ""

while input != "q"
  if input == "l"
    @s1.pets.each { |x,y|
      if y.owner == :available
        puts "#{y.name} is available"
      elsif y.owner != :available
        puts "#{y.name} is unavailable"
      end
    }
  elsif input == "c"
    @s1.clients.each { |x,y|
      if y.pet == nil
        puts "#{y.name} doesn't have a pet"
      else
        puts "#{y.name} has #{y.pet} as a pet"
      end
    }
  elsif input == "a"
    print "Enter in the Pet name: "
    petinput = gets.chomp
    print "Enter in the Client name: "
    clientinput = gets.chomp

    if @s1.pets[petinput].owner == :available && @s1.clients[clientinput].pet == nil
      @s1.pets[petinput].owner = clientinput
      @s1.clients[clientinput].pet = petinput
      puts "#{@s1.pets[petinput].name} is now owned by #{@s1.clients[clientinput].name}"
    elsif @s1.pets[petinput].owner != :available && @s1.clients[clientinput].pet == nil
      puts "Sorry, #{@s1.pets[petinput].name} is not available"
    elsif @s1.pets[petinput].owner == :available && @s1.clients[clientinput].pet != nil
      puts "Sorry, #{@s1.clients[clientinput].name} already has a pet"
    end
  elsif input == "g"
    print "Enter in the Pet name: "
    petcheck = gets.chomp

    if @s1.pets[petcheck].owner != :available
      currentowner = @s1.pets[petcheck].owner
      @s1.pets[petcheck].owner = :available
      @s1.clients[currentowner].pet = nil
      puts "#{@s1.pets[petcheck].name} is now owned by #{@s1.pets[petcheck].owner}"
      puts "#{@s1.clients[currentowner].name} now owns #{@s1.clients[currentowner].pet}"
    end
  elsif input == "d"
    print "What's your name: "
    name = gets.chomp.downcase
    if name == "guy"
      adpet
    end

  else
  end
  puts ""
  puts "(l)ist available pets, list (c)lients, (a)dopt a pet, (g)ive up a pet for adoption, a(d)min, or (q)uit: "
  input = gets.chomp.downcase
  puts ""
end

#list available pets
#call the shelter pets hash, iterate though them and find which have an owner of "available"

#adopt a pet
#enter in a pet and owner. if the pet is available, change the owner to owner

#give up a pet for adoption
#enter in a pet. if the pet has an owner, change the owner to available.
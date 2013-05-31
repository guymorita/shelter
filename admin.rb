
def adpet
  puts ""
  puts "(a)dd a pet, add a (c)lient or (q)uit admin: "
  adput = gets.chomp.downcase

  while adput != "q"
    if adput == "a"
      print "What is the name of the pet? "
      name = gets.chomp.capitalize
      print "What type of pet is it?"
      type = gets.chomp
      print "What sex is it?"
      sex = gets.chomp
      print "How many years old is it?"
      age = gets.chomp.to_i
      print "Name the animal's favorite toy"
      toy = gets.chomp
      pnew = Pets.new(name, type, sex, age, :available, [toy])
      @s1.pets[name] = pnew
      puts "#{@s1.pets[name].name} is now #{@s1.pets[name].owner} at the shelter"
    elsif adput == "c"
      print "What is the name of the client?"
      name = gets.chomp
      print "What is the sex?"
      sex = gets.chomp
      print "What is the age?"
      age = gets.chomp.to_i

      cnew = Clients.new(name, sex, age)
      @s1.clients[name] = cnew
      puts "#{@s1.clients[name].name} is now a client in the shelter"
    else
    end
    puts "(a)dd a pet or add a (c)lient: "
    adput = gets.chomp.downcase
  end    
end
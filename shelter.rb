class Shelter
  attr_accessor :address, :pets, :clients

  def initialize(address, pets, clients)
    @address = address
    @pets = {}
    @clients = {}
  end

  def inspect
    "The shelter at #{@address} has these pets: #{@pets}"
  end

  def something?

  end

  def available_pets
    if pets.owner == :available
      return true
    else
      false
    end
  end

end

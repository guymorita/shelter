class Clients

  attr_accessor :name, :sex, :age, :pet

  def initialize(name, sex, age, pet = nil)
    @name = name
    @sex = sex
    @age = age
    @pet = pet
  end

  def inspect
    "The client #{@name} is a #{@sex} age #{@age}. They own the pet #{@pet}"
  end
end
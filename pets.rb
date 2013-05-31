class Pets
  attr_accessor :name, :type, :sex, :age, :owner, :toys

  def initialize(name, type, sex, age, owner = :available, toys)
    @name = name
    @type = type
    @sex = sex
    @age = age
    @owner = owner
    @toys = []
  end

  def inspect
    "#{@name} is a good #{@type}. Sex: #{@sex} Age: #{@age}. Owned by: #{@owner}"
  end

end
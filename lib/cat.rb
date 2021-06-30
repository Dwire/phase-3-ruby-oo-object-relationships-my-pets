class Cat

  attr_reader :name #, :owner
  # attr_writer :owner

  attr_accessor :owner, :mood

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"

    @@all << self
  end



  def self.all 
    @@all
  end 
end
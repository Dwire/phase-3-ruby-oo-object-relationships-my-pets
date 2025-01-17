require "pry"


class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"

    @@all << self
  end

  # def name 
  #   @name 
  # end 

  def say_species 
    "I am a #{self.species}."
    # "I am a #{@species}."
  end 

  def cats 
    Cat.all.select {|cat| cat.owner == self }
  end 

  def dogs
    Dog.all.select {|dog| dog.owner == self }
  end 

  def buy_cat(cat_name)
    cat_obj = Cat.all.find {|cat| cat.name == cat_name}
    cat_obj.owner = self
  end 

  # def buy_cat(cat_name)
  #   Cat.new(cat_name, self)
  # end 

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end  

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy" }
  end 

  def feed_cats
    cats.each {|cat| cat.mood = "happy" }
  end 
  
  def sell_pets 
    dogs.each do |dog| 
      dog.mood = "nervous" 
      dog.owner = nil
    end 

    cats.each do |cat| 
      cat.mood = "nervous" 
      cat.owner = nil
    end 
  end 

  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 

  def self.all
    @@all
  end 


  def self.count
    # @@all.count
    # self.all.count
    all.count
  end 

  def self.reset_all
    @@all.clear
    # @@all = []
  end 

end
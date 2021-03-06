class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  
  OWNERS = []
  
  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [],:cats => [],:dogs => []}
    
  end
  
  def self.all 
    OWNERS
  end
  
  def buy_fish(name)
    @name = name
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    @name = name
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    @name = name
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end 
  
  def sell_pets
    @pets.each do |species, pet|
      pet.each do |p|
        p.mood = "nervous"
      end
    pet.clear
    end
  end 
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end 
  
  def species
    @species
  end
  
  def self.count
    OWNERS.size
  end
  
  def self.reset_all
    OWNERS.clear
  end
  
  def say_species
    "I am a #{species}."
  end
end
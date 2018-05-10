class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    
  end
  
  def self.all 
    @@all
  end
  
  def buy_fish(name)
    @name = name
    fish = Fish.new(name)
  end
  
  def buy_cat(name)
    @name = name
    cat = Cat.new(name)
  end
  
  def buy_dog(name)
    @name = name
    dog = Dog.new(name)
  end
  
  def walk_dogs(name)
  end
  
  def play_with_cats
  end 
  
  def feed_fish
  end 
  
  def sell_pets
  end 
  
  def list_pets
  end 
  
  def self.owners_count
    @@all << self  
  end
  
  def species
  end
  
end
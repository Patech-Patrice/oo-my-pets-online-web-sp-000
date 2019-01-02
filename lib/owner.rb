class Owner
  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat

  @@all = []
  @@pets = {:fishes => [], :dogs => [], :cats => []}

  def initialize(species)
    @species = species
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @@pets
  end

  def buy_fish(fish)
    @@pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @@pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    @@pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @@pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end
  
  def sell_pets
     owner.pets.each {|type, pets| expect(pets.empty?).to eq(true) }
  end

  def list_pets
     "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
 	
 	
 
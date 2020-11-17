class Owner
  # code goes here

    attr_reader :name, :species
    attr_accessor :cats, :dogs
  
    @@all = []
  
    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
    end

    def say_species
      p "I am a #{@species}."
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

    def cats
      Cat.all.select {|cat| cat.owner != nil}.count
    end

end
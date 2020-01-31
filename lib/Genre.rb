require 'pry'

class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
       @@all  
    end

    def self.destroy_all
        all.clear
    end

    def save
        @@all << self 
    end

    def self.create(genre)
        created_genre = self.new(genre)
        created_genre.save 
        created_genre
        binding.pry
    end

end
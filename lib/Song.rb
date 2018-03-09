class Song
  attr_accessor :name
  attr_reader :artist 

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist if artist
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    song = new(name)
    song.save
  end
end

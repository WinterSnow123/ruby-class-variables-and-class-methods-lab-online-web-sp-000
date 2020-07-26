class Song

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count += 1
    @@genres << genre
  end

  @@count = 0
  @@genres = []

  def self.count
    @@count
  end

  def self.genres
    genre_count = []
    @@genres.each do |genre|
      genre_count << genre |= genre
    end
    genre_count
  end

end

class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = @name
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = @name
    @songs << song
  end

  def song_count
    @@song_count
  end
end

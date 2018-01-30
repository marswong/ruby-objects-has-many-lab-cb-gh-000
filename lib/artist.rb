class Artist
  attr_accessor :name, :songs

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
    @songs.length
  end
end

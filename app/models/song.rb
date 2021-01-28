class Song < ActiveRecord::Base
  validates :title, presence:true
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  # add associations here
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist_name : nil
  end

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    self.genre ? self.genre_name : nil
  end

end

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
    self.artist ? self.artist.name : nil
  end

  def genre_id=(id)
    self.genre = Genre.find_or_create_by(id: id)
  end

  def genre_id
    self.genre ? self.genre_id : nil
  end

  def note_id=(id)
    self.note = Note.find_or_create_by(id: id)
  end

  def note_id
    # self.note_id ? self.note_id : nil
  end


end

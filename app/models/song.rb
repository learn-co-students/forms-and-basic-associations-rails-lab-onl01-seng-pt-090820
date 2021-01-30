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

  def notes=(contents)
    #binding.pry
    contents.each do |c|
      #binding.pry
    self.notes.build(Note.find_or_create_by(content: c))
  end
  end

  def notes
   self.notes ? self.notes : nil
  end


end

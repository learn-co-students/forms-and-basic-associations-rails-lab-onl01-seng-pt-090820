class Genre < ActiveRecord::Base
  validates :content, presence:true
  has_many :song
  # add associations
end

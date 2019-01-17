# class SongGenre < ActiveRecord::Base
#   belongs_to :song
#   belongs_to :genre
# end
class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end

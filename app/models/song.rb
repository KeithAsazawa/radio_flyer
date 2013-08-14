class Song < ActiveRecord::Base
  attr_accessible :artist, :mp3, :title
  has_attached_file :mp3

  validates :artist, :title, presence: true
  validates_attachment :mp3, presence: true,
  										       content_type: { content_type: [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ] },
  										       size: { less_than: 9.megabytes }
end

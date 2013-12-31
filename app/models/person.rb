class Person < ActiveRecord::Base
  has_and_belongs_to_many :movies

  mount_uploader :image, ImageUploader

  ACTOR    = 'actor'
  DIRECTOR = 'director'

  scope :actors,             -> { where(job: ACTOR) }
  scope :directors,          -> { where(job: DIRECTOR) }
end

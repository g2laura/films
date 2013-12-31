class Movie < ActiveRecord::Base
  has_and_belongs_to_many :kinds
  has_and_belongs_to_many :people

  def self.search(title, year, box)
    if title.blank? && year.blank? && box.blank?
      return Movie.all
    elsif title.blank? && year.blank? && !box.blank?
      return Movie.where(box: box)
    elsif title.blank? && !year.blank? && box.blank?
      return Movie.where(year: year)
    elsif !title.blank? && year.blank? && box.blank?
      return Movie.find(:all, :conditions => ["movies.title LIKE ?", "%#{title}%"])
    elsif !title.blank? && !year.blank? && box.blank?
      return Movie.find(:all, :conditions => ["movies.title LIKE ? AND movies.year = ?", "%#{title}%", year])
    elsif !title.blank? && year.blank? && !box.blank?
      return Movie.find(:all, :conditions => ["movies.title LIKE ? AND movies.box = ?", "%#{title}%", box])
    elsif !title.blank? && !year.blank? && !box.blank?
      return Movie.find(:all, :conditions => ["movies.title LIKE ? AND movies.year = ? AND movies.box = ?", "%#{title}%", year, box])
    elsif title.blank? && !year.blank? && !box.blank?
      return Movie.where(year: year, box: box)
    end
  end
end

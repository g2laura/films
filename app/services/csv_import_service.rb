require 'csv'

class CsvImportService

  def initialize(filename, format)
    @filename = filename
    @format = format
  end

  def open_file
    csv_file  = File.open(@filename,'r:UTF-8')
    @csv      = CSV.parse(csv_file, :headers => true)
  end

  def import
    open_file

    @csv.each_with_index do |row, index|
      if (index >= 0)
        row_hash  = row.to_hash
        _position = row_hash.values[0]
        _year     = row_hash.values[1]
        _title    = row_hash.values[2]
        _actor    = row_hash.values[3]
        _director = row_hash.values[4]
        _kind     = row_hash.values[5]
        _box      = row_hash.values[6]

        movie = Movie.where(title: _title).first_or_create(
          title: _title.titleize,
          year: _year.to_i,
          position: _position.to_i, 
          box: _box.to_i,
          format: @format
        ) unless _title.blank?

        unless _actor.blank?
          _actor.split(",").each do |act|
            actor = Person.where(name: act.titleize).first_or_create(name: act.titleize, job: Person::ACTOR)
            actor.movies<<movie
          end
        end
        
        unless _director.blank?
          _director.split(",").each do |dict|
            director = Person.where(name: dict.titleize).first_or_create(name: dict.titleize, job: Person::DIRECTOR)
            director.movies<<movie
          end
        end

        unless _kind.blank?
          _kind.split(",").each do |ki|
            kind = Kind.where(name: ki.titleize).first_or_create { |k| k.name = ki.titleize }
            kind.movies<<movie
          end
        end

        puts "#{_title}"
        puts " "
      end
    end
  end

  def logger
    Rails.logger
  end
end

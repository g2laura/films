class RenamePeopleMovie < ActiveRecord::Migration
  def change
  	rename_table :people_movies, :movies_people
  end
end

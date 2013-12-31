class RenameMoviePeople < ActiveRecord::Migration
  def change
  	rename_table :movie_people, :people_movies
  end
end

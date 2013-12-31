class RenameMovieKinds < ActiveRecord::Migration
  def change
  	rename_table :movie_kinds, :kinds_movies
  end
end

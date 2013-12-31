class RemoveMovieIdFormKind < ActiveRecord::Migration
  def change
  	remove_column :kinds, :movie_id
  end
end

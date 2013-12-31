class CreateMovieKinds < ActiveRecord::Migration
  def change
    create_table :movie_kinds do |t|
      t.integer :movie_id
      t.integer :kind_id

      t.timestamps
    end
  end
end

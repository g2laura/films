class CreateMoviePeople < ActiveRecord::Migration
  def change
    create_table :movie_people do |t|
      t.integer :movie_id
      t.integer :person_id

      t.timestamps
    end
  end
end
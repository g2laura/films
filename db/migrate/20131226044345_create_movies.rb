class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :box
      t.string :format
      t.integer :position

      t.timestamps
    end
  end
end

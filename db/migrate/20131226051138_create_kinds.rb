class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.references :movie, index: true
      t.string :name

      t.timestamps
    end
  end
end

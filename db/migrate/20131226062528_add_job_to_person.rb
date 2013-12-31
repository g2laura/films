class AddJobToPerson < ActiveRecord::Migration
  def change
    add_column :people, :job, :string
  end
end

class AddAttributesToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :name, :string
    add_column :presentations, :month, :integer
    add_column :presentations, :day, :integer
    add_column :presentations, :block_number, :integer
  end
end

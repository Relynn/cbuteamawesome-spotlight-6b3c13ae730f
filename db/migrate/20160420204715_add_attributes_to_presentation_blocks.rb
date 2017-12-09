class AddAttributesToPresentationBlocks < ActiveRecord::Migration
  def change
    add_column :presentation_blocks, :name, :string
    add_column :presentation_blocks, :month, :integer
    add_column :presentation_blocks, :day, :integer
  end
end

class AddColumnsToPresentationBlocks < ActiveRecord::Migration
  def change
    add_column :presentation_blocks, :block_start, :datetime
    add_column :presentation_blocks, :block_end, :datetime
    add_column :presentation_blocks, :block_sections, :integer
  end
end

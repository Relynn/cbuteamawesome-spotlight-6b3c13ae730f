class AddPresentationBlockIdToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :presentation_block_id, :integer
  end
end

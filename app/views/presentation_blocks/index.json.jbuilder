json.array!(@presentation_blocks) do |presentation_block|
  json.extract! presentation_block, :id
  json.url presentation_block_url(presentation_block, format: :json)
end

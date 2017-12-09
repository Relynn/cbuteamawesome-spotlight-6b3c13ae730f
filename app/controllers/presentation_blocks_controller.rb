class PresentationBlocksController < ApplicationController
  before_action :set_presentation_block, only: [:show, :edit, :update, :destroy]

  # GET /presentation_blocks
  # GET /presentation_blocks.json
  def index
    @presentation_blocks = PresentationBlock.all
  end

  # GET /presentation_blocks/1
  # GET /presentation_blocks/1.json
  def show
  end

  # GET /presentation_blocks/new
  def new
    @presentation_block = PresentationBlock.new
  end

  # GET /presentation_blocks/1/edit
  def edit
  end

  # POST /presentation_blocks
  # POST /presentation_blocks.json
  def create
    @presentation_block = PresentationBlock.new(presentation_block_params)
    
    @block_number = 1
    # Create presentations
    @presentation_block.block_sections.times do
      @presentation_block.presentations.build(:name => @presentation_block.name, :month => @presentation_block.month, :day => @presentation_block.day, :block_number => @block_number)
      @block_number += 1
    end
    
    respond_to do |format|
      if @presentation_block.save
        format.html { redirect_to @presentation_block, notice: 'Presentation block was successfully created.' }
        format.json { render :show, status: :created, location: @presentation_block }
      else
        format.html { render :new }
        format.json { render json: @presentation_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presentation_blocks/1
  # PATCH/PUT /presentation_blocks/1.json
  def update
    respond_to do |format|
      if @presentation_block.update(presentation_block_params)
        format.html { redirect_to @presentation_block, notice: 'Presentation block was successfully updated.' }
        format.json { render :show, status: :ok, location: @presentation_block }
      else
        format.html { render :edit }
        format.json { render json: @presentation_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentation_blocks/1
  # DELETE /presentation_blocks/1.json
  def destroy
    @presentation_block.destroy
    respond_to do |format|
      format.html { redirect_to presentation_blocks_url, notice: 'Presentation block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presentation_block
      @presentation_block = PresentationBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presentation_block_params
      #params[:presentation_block]
      params.require(:presentation_block).permit(:name, :month, :day, :block_sections, :block_start, :block_end)
    end
end

class ReadsController < ApplicationController
  before_action :set_read, only: [:show, :update, :destroy]

  # GET /reads
  def index
    @reads = Read.all

    render json: @reads
  end

  # GET /reads/1
  def show
    render json: @read
  end

  # POST /reads
  def create
    @read = Read.new(read_params)

    if @read.save
      render json: @read, status: :created, location: @read
    else
      render json: @read.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reads/1
  def update
    if @read.update(read_params)
      render json: @read
    else
      render json: @read.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reads/1
  def destroy
    @read.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_read
      @read = Read.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def read_params
      params.require(:read).permit(:user_id, :book_id, :rating)
    end
end

class NationsController < ApplicationController
  before_action :set_nation, only: [:show, :update, :destroy]

  # GET /nations
  def index
    @nations = Nation.all

    render json: @nations
  end

  # GET /nations/1
  def show
    render json: @nation
  end

  # POST /nations
  def create
    @nation = Nation.new(nation_params)

    if @nation.save
      render json: @nation, status: :created, location: @nation
    else
      render json: @nation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nations/1
  def update
    if @nation.update(nation_params)
      render json: @nation
    else
      render json: @nation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nations/1
  def destroy
    @nation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nation
      @nation = Nation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nation_params
      params.require(:nation).permit(:name, :language)
    end
end

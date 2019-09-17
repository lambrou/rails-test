class ColorsController < ApplicationController
  def index
    @color = Color.order("RANDOM()").first
  end

  def new
    @color = Color.new
  end

  def create
    Color.create(color_params)
    redirect_to root_path
  end

  private

  def color_params
    params.require(:color).permit(:favorite, :author)
  end
end
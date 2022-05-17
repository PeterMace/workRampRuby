class GuidesController < ApplicationController
  def index
    @guides = Guide.all
  end

  def new
  end

  def create
    @guide = Guide.new(guide_params)
    @guide.save
    redirect_to @guide
  end

  def edit
    @guide = Guide.find(params[:id])
  end

  def update
    @guide = Guide.find(params[:id])
   
    if @guide.update(guide_params)
      redirect_to @guide
    else
      render 'edit'
    end
  end

  def show
    @guide = Guide.find(params[:id])
  end

  private

  def guide_params
    params.require(:guide).permit(:name)
  end
end

class UniversitiesController < ApplicationController
  def index
    @universities=University.all
  end

  def create
    @university=University.new(university_params)
    if @university.save
      redirect_to @university
    else
      render 'new'
    end
  end

  def show
    @university=University.find(params[:id])
  end

  def new
    @university=University.new
  end

  def edit
    @university= University.find(params[:id])
  end

  private

  def university_params
    params.require(:university).permit(:name, :image_url)
  end

end

class SchoolClassesController < ApplicationController

  def index
    @schoolclass = SchoolClass.all
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass = SchoolClass.update(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  private

  def school_class_params
    params.require(:school_class).permit(:room_number, :title)
  end

end

class SchoolClassesController < ApplicationController

  #READ
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  # CREATE
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(secure_params)
    @school_class.save
    redirect_to @school_class
  end

  # UPDATE
  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(secure_params)
    redirect_to @school_class
  end

  # PRIVATE METHODS
  private

  def secure_params
    params.require(:school_class).permit(:title, :room_number)
  end

end

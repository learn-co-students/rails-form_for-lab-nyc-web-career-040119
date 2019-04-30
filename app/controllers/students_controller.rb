class StudentsController < ApplicationController

  #READ
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  # CREATE
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(secure_params)

    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  # UPDATE
  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(secure_params)
    redirect_to @student
  end

  # PRIVATE METHODS
  private

  def secure_params
    params.require(:student).permit(:first_name, :last_name)
  end

end

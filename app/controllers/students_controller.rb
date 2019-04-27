class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.create(students_params)
    redirect_to @student
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(students_params)
    redirect_to @student
    # byebug
  end

  private

  def students_params
    params.require(:student).permit(:first_name, :last_name)
  end
end

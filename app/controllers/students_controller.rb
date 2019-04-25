class StudentsController < ApplicationController

  # CREATE
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to @student
  end

  # SHOW
  def show
    set_student
  end

  # EDIT
  def edit
    set_student
  end

  def update
    set_student.update(student_params(:first_name, :last_name))
    redirect_to set_student
  end

  # PRIVATE METHODS
  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end

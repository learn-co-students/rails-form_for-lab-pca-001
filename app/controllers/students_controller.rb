class StudentsController < ApplicationController
  def index
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(strong_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.update(strong_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def strong_params(*args)
    params.require(:student).permit(*args)
  end
end
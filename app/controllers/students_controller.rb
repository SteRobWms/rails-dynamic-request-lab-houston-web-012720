class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    # binding.pry
    @student = current_student
  end

  def current_student
    Student.find(params[:id])
  end
end
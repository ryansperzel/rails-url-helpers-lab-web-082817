class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    # student_path(@student)
  end

  def activate_student
    set_student
    if @student.active != true
      @student.active = true
    else
      @student.active = false
    end
    @student.save
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @active = Student.active
  end

  def activate
    set_student
    @student.activate ? @student.active = false : @student.active = true
    @student.save
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end

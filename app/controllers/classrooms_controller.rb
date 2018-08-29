class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @student = @classroom.student_params
  end

  def index
    @classrooms = Classroom.all
  end
end

class StudentsController < ApplicationController
# before_action :authenticate_student!
  def new
  end

  def show
    @student = Student.last
  end
end

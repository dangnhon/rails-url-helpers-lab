class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  #Man they wanted you to intuitively know that "activate" is just an update method. 
  def update
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    # redirect can be written in 2 ways: 
    # redirect_to student_path
    # or like below
    redirect_to :controller => 'students', :action => 'show'
  end 

 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    puts params
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: 'Student was successfully created.'
    else
      render :new
    end
  end
  
  

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path
  end

  def destroy
  @student = Student.find(params[:id])
  if @student.destroy
    redirect_to students_path, notice: 'Student was successfully deleted.'
  else
    redirect_to students_path, alert: 'Failed to delete student.'
  end
end



  private

def student_params
  params.require(:student).permit(:name, :age)
end


  
end

class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades 
    students = Student.all.order('grade DESC')
    render json: students
  end

  def highest_grade
    highest_grade = Student.maximum(:grade)
    student = Student.where(grade: highest_grade)
    render json: student
  end

end

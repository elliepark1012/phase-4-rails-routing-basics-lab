class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    
    def grades 
        students = Student.order(grades: :desc)
        render json: students
    end 
    
    def highest_grade 
        student = Student.order(grades: :desc).fisrt
        redner json: student
    end 
end 
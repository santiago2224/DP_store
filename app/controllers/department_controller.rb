class DepartmentController < ApplicationController
  def index
    @departments = Department.all
    render component: "Departments", props: {departments: @departments}
  end


  def show
    @department = Department.find(params[:id])

    render component: "Department", props: {department: @department, questions: @department.questions}
  end




  def allFoods

    @foods = Department.get_all_foods

    render component: "AllQuestions", props: {foods: @foods}
  end


  def x
    info = Department.get_food_info

    render json:{data: info}
  end
end


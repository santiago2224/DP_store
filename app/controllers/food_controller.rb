class FoodController < ApplicationController
  before_action :set_department

  def new
    @food = Food.new
    render component: "foodForm", props: {department: @department, food: @food}
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to department_path(@department)
    else 
      render component: "foodForm", props: {department: @department, food: @food, errors: @food.errors.full_messages}
    end
  end

  def edit
    @food = @department.foods.find(params[:id])
    render component: "foodForm", props: {department: @department, food: @food}
  end

  def update
    @food = Food.find(params[:id])

    if @food.update(food_params)
      redirect_to @department
    else 
    end
  end



  private

  def set_department
    @department = Department.find(params[:department_id])
  end

  def food_params
    params.require(:food).permit(:text, :answer)
  end
end


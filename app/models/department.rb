class Department < ApplicationRecord
  has_many :foods, dependent : :destroy

  def self.get_all_foods

    department = Department.all

    all_foods = []

    department.each do |department|
      department.questions.each do |food|
        all_foods.push(foods)
      end
    end

    return all_foods
  end

  def self.get_depart_info
    depart = Department.all

    depart.map do |depart|
      department.get_info
    end

  end


  # instance method called on an instance of the class
  def get_info
    "here is some info on #{self.name}: #{self.about}"
  end

end


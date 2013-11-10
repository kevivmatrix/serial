class CustomEmployeeSerializer < ActiveModel::Serializer
  attributes :name, :designation, :month_salary, :annual_salary

  def annual_salary
    month_salary * 12
  end
end

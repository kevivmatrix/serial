class Custom2CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :founded, :total_offices, :total_employees

  has_many :employees, serializer: CustomEmployeeSerializer
  has_many :offices

  def total_offices
    offices.count
  end

  def total_employees
    employees.count
  end

end

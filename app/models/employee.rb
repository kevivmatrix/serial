class Employee < ActiveRecord::Base

  belongs_to :company
  belongs_to :office

  def serializable_hash(options={})
    json = super(options)
    json[:annual_salary] = annual_salary
    json
  end

  def annual_salary
    month_salary * 12
  end

end

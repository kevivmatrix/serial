class Company < ActiveRecord::Base

  has_many :employees
  has_many :offices

  def serializable_hash(options={})
    json = super(options)
    json[:total_offices] = offices.count
    json[:total_employees] = employees.count
    json
  end

end

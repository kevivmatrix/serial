class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.text :designation
      t.integer :month_salary
      t.references :company
      t.references :office

      t.timestamps
    end
  end
end

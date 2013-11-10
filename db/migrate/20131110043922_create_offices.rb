class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :location
      t.references :company

      t.timestamps
    end
  end
end

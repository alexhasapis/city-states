class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.player :references
      t.string :flag
      t.string :motto
      t.integer :population
      t.float :employment
      t.float :tax_rate
      t.integer :wealth

      t.timestamps null: false
    end
  end
end

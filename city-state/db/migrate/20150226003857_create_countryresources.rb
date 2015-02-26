class CreateCountryresources < ActiveRecord::Migration
  def change
    create_table :countryresources do |t|
      t.references :country, index: true
      t.references :resource, index: true
      t.integer :quantity

      t.timestamps null: false
    end
    add_foreign_key :countryresources, :countries
    add_foreign_key :countryresources, :resources
  end
end

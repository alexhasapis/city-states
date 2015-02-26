class CreateTradeDeals < ActiveRecord::Migration
  def change
    create_table :trade_deals do |t|
      t.references :player, index: true
      t.references :countryresource, index: true
      t.integer :cost
      t.float :quantity
      t.boolean :agreed

      t.timestamps null: false
    end
    add_foreign_key :trade_deals, :players
    add_foreign_key :trade_deals, :countryresources
  end
end

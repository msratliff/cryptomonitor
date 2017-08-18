class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :symbol
      t.float :price_0
      t.float :price_1
      t.float :price_2
      t.integer :days_doubled

      t.timestamps
    end
    add_index :currencies, :name, unique: true
    add_index :currencies, :symbol, unique: true
  end
end

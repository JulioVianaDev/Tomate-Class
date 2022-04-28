class CreateDrips < ActiveRecord::Migration[7.0]
  def change
    create_table :drips do |t|
      t.string :nome
      t.string :pants
      t.integer :pricepants
      t.string :blusa
      t.integer :priceblusa
      t.string :bone
      t.integer :pricebone

      t.timestamps
    end
  end
end

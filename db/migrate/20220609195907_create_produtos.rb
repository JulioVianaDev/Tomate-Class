class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :cores
      t.float :price
      t.boolean :disponivel
      t.string :tipo
      t.string :tamanho

      t.timestamps
    end
  end
end

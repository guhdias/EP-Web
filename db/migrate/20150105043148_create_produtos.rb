class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.integer :cbarras
      t.string :descricao
      t.decimal :valor
      t.integer :saldo

      t.timestamps
    end
  end
end

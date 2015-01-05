class AdicionarTipoAoProduto < ActiveRecord::Migration
  def change
   add_column :produtos, :tipo_id, :integer
  end
end

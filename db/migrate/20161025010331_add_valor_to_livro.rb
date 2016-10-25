class AddValorToLivro < ActiveRecord::Migration
  def change
    add_column :livros, :valor, :decimal, :precision => 5, :scale => 2, :default => 0.00
  end
end

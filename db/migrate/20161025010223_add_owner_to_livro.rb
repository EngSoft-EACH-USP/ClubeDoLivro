class AddOwnerToLivro < ActiveRecord::Migration
  def change
    add_column :livros, :owner, :string
  end
end

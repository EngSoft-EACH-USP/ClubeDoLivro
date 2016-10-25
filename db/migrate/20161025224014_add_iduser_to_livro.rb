class AddIduserToLivro < ActiveRecord::Migration
  def change
    add_column :livros, :idUser, :integer
  end
end

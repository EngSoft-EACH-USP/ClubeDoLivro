class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.date :publicacao
      t.string :isbn
      t.text :descricao

      t.timestamps null: false
    end
  end
end

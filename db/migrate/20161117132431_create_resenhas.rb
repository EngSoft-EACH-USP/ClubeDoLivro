class CreateResenhas < ActiveRecord::Migration
  def change
    create_table :resenhas do |t|
      t.text :body
      t.references :livro, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end

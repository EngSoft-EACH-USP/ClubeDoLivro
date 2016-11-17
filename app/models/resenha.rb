class Resenha < ActiveRecord::Base 
  belongs_to :idUser, :foreign_key => :idUser, class_name: 'User'
  belongs_to :idLivro, :foreign_key => :idLivro, class_name: 'Livro'

  validates_uniqueness_of :idUser, :scope => :idLivro

  scope :between, -> (idUser, idLivro) do
    where("(resenhas.idUser = ? AND resenhas.idLivro =?) OR (resenhas.idUser = ? AND resenhas.idLivro =?)", idUser, idLivro, idUser, idLivro)
  end
end

json.extract! livro, :id, :nome, :autor, :publicacao, :isbn, :descricao, :created_at, :updated_at, :valor, :owner
json.url livro_url(livro, format: :json)
json.extract! livro, :id, :nome, :autor, :publicacao, :isbn, :descricao, :created_at, :updated_at
json.url livro_url(livro, format: :json)
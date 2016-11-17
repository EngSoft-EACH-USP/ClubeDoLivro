json.extract! resenha, :id, :user, :livro, :texto, :data, :created_at, :updated_at
json.url resenha_url(resenha, format: :json)
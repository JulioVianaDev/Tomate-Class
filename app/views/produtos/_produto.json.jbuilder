json.extract! produto, :id, :nome, :cores, :price, :disponivel, :tipo, :tamanho, :created_at, :updated_at
json.url produto_url(produto, format: :json)

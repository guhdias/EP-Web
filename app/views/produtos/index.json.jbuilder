json.array!(@produtos) do |produto|
  json.extract! produto, :id, :cbarras, :descricao, :valor, :saldo
  json.url produto_url(produto, format: :json)
end

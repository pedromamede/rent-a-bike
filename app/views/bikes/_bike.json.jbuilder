json.extract! bike, :id, :modelo, :marca, :descricao, :valor_aluguel, :created_at, :updated_at
json.url bike_url(bike, format: :json)

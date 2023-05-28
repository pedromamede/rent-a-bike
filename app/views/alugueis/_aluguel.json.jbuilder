json.extract! aluguel, :id, :bike_id, :ponto_id, :hora_retirada, :hora_devolucao, :forma_pagamento, :created_at, :updated_at
json.url aluguel_url(aluguel, format: :json)

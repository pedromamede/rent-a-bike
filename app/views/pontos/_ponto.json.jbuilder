json.extract! ponto, :id, :image_url, :endereco, :horario, :link_maps, :created_at, :updated_at
json.url ponto_url(ponto, format: :json)

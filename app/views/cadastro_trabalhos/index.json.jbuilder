json.array!(@cadastro_trabalhos) do |cadastro_trabalho|
  json.extract! cadastro_trabalho, :id, :titulo, :nome, :data, :arquivo
  json.url cadastro_trabalho_url(cadastro_trabalho, format: :json)
end

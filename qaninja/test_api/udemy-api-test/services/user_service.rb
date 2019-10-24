module User
    include HTTParty
    #url base user
    base_uri 'https://jsonplaceholder.typicode.com'
    #opções do meu serviço
    headers 'Content-Type': 'application/json'
end

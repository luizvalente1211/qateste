Quando('digitar um {string}') do |cep|
    @response = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/")
   
end
  
Então("será retornado os dados do endereço") do

    mensagem = log "IBGE : #{@response["ibge"]}"
    
 
end

Quando('digitar um {string} invalido') do |string|
    @response = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/")
end
  
Então('será retornada mensagem') do
    code =  "Status Code: #{@response.code}"
    log code

    
    case @response.code
    when 200 
        log "Cep Válido"
    when 400
        log "Cep Inválido"
    end
    
 end
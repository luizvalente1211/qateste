#language: pt

Funcionalidade: Consulta de dados a partir de um cep
Eu como usuário do sistema 
Quero digitar um cep
Para consultar os dados de um endereço

@consultacep
Cenário: Consulta de cep
Quando digitar um <cep>
Então será retornado os dados do endereço
Exemplos:

|cep    |
|"01010000"|
   


@invalido
Cenário: Consulta de CEP inválido
Quando digitar um <cep>
Então será retornada mensagem

Exemplos:
|cep         | 
|"2549999999"|



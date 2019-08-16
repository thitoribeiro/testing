

describe "Inserir" do

    it "assunto" do
        result = HTTParty.post("http://sas.gpnet.com.br:8205/SasTesteProjeto/SasService/Assunto/Inserir", 
        body: {
            Nome: "ASSUNTO Teste Automação - HTTParty",
            DisponivelPara: 3,
            NivelID: 3317,
            ListaAtendente: [
              {
                UsuarioID: 1
              }
            ],
            ListaUnidadeOrganizacional: [
              {
                UnidadeOrganizacionalID: 1
              }
            ]
        }.to_json, 
        hearders: 
            {
            "Content-Teype" => "application/json",
            "x-req" => "I3+NZaaeRQQC7rrQJr84aOqfbJm88FEbCyijU92Hy3Mrjvtajdi2JRrqg8jh7mxMZdguuFxvfquhK8fbrYBTCA=="
            },
        
        )
        puts result
        expect(result.response.code).to eql "200"
        



    end

end
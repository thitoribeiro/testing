describe "cadastro" do
    it "novo usuario" do

        Database.new.delete_user("thito.ribeiro@hotmail.com")

        result = HTTParty.post(
            "http://localhost:3000/user", 
            body: {full_name: "Thito Ribeiro", email: "thito.ribeiro@hotmail.com", password: "pwd123"}.to_json,
            headers: {
                "Content-Type" => "application/json",
            },
        )
        puts result
        expect(result.response.code).to eql "200"
    end
end

describe "user register" do

    it "new user" do
        result = HTTParty.post(
        "https://5d9cddc466d00400145ca017.mockapi.io/user", 
        body: {
            id: "1",
            name: "name 1",
            lastname: "lastname 1",
            email: "email 1",
            phone: "phone 1",
            whatsapp: "whatsapp 1",
            address: "address 1",
            city: "city 1",
            state: "state 1"
        }.to_json
    )
        puts result
        expect(result.response.code).to eql "200"
    
    end
end

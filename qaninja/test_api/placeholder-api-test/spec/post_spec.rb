
describe "post" do
    context "new album" do
        before do
            @new_album = { userId: '1', id: '101', title: 'title test' }

            @result = HTTParty.post(
                "https://jsonplaceholder.typicode.com/albums",
                body: @new_album.to_json,
                headers: {
                    "Context-Type" => "application/json",
                },
            )

        end
        puts @result
        it { expect(@result.response.code).to eql "200"}
    end
end
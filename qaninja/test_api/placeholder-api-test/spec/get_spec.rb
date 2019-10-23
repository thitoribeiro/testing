
describe "get" do
    context "get album" do
        before do
            @result = HTTParty.get(
                "https://jsonplaceholder.typicode.com/albums",
            )
        end
        puts @result
        it { expect(@result.response.code).to eql "200"}
    end
end

            
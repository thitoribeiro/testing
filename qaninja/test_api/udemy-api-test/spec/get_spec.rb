describe 'fazer uma requisição' do
  it 'get' do
    #@result = HTTParty.get('https://jsonplaceholder.typicode.com/users/1')
    #puts @result

    @new_user = User.get('/users/1')
    puts @new_user
  end
end

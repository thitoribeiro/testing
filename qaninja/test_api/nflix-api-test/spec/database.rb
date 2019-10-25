require "pg"

class Database
  def initialize
    @connection = conn = PG::Connection.open(:host => 'http://localhost:3001/user', :dbname => 'nflix', :user => 'postgres', :password => 'qaninja')
    #res = conn.exec_params(:host => 'http://localhost:3001/user')
    #conn = { 'host: "http://localhost:3001/user", dbname: "nflix", user: "postgres", password: "qaninja" }
    #@connection = PG.connect(conn)
  end

  def delete_user(email)
    @connection.exec("DELETE from public.users where email = '#{email}';")
  end
end

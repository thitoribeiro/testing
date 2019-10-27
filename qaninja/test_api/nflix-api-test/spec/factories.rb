
require_relative "models/user_model"

FactoryBot.define do
  factory :user, class: UserModel do
    full_name { "Thito Ribeiro" }
    email { "thito.ribeiro@hotmail.com" }
    password { "pwd123" }

    after(:build) do |user|
      puts "apagando o email " + user.email
      Database.new.delete_user(user.email)
    end
  end

  factory :user_wrong_email, class: UserModel do
    full_name { "Papito Skywalker" }
    email { "papito#jedi.com" }
    password { "jedi123" }
end
end

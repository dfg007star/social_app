FactoryBot.define do
  factory :user do
    name { 'Dima Osin' }
    email { 'lol@mail.ru' }
    password { 'password' }
    password_confirmation { 'password' }
  end
  factory :random_user, class: User do
    name { "random" }
    email { "random@mail.ru" }
    password { 'password' }
    password_confirmation { 'password' }
  end
end

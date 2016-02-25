FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    name "test"
    password "password123"
    password_confirmation "password123"
  end

  factory :invalid_user, parent: :user do
    name nil
  end

  factory :update_user, parent: :user do
    email "teste@teste.com"
    name "Teste"
    password "@@teste123"
  end

end
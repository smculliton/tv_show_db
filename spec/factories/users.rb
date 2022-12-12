FactoryBot.define do 
  factory :user do 
    username { Faker::Fantasy::Tolkien.unique.character }
    password { Faker::Internet.password }
  end
end
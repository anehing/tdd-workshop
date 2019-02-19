FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@toys.com" }
    sequence(:auth_token) { |n| "auth_token#{n}" }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end

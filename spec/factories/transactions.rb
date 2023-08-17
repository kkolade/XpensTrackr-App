FactoryBot.define do
  factory :transaction do
    name { "MyString" }
    amount { "9.99" }
    author { nil }
    category { nil }
  end
end

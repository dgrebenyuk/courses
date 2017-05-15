FactoryGirl.define do
  factory :book do
    title Faker::Book.title
    author Faker::Book.author
    year Faker::Number.between(1900, 2000)
  end
end

FactoryGirl.define do
  factory :book_page do
    body Faker::Lorem.paragraph
    association :book
  end
end

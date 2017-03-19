FactoryGirl.define do
  factory :artist do
    name    { Faker::GameOfThrones.character }
    describtion { Faker::Faker::Hipster.paragraph(2) }
    country { Faker::GameOfThrones.city }
  end
end

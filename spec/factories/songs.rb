FactoryGirl.define do
  factory :songs do
    name  { Faker::HarryPotter.character }
    album   { Faker::HarryPotter.character }
    release_date  { Faker::Date.birthday(18, 65) }
  end
end

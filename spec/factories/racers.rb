FactoryBot.define do 
  factory :racer do
    id { 1 }
    name { 'Senninha' } 
    born_at { 18.years.ago }
    image_url { 'https://unsplash.com/pt-br/fotografias/Yz7jQDkYKYI' }
  end 

  trait :invalid_racer do 
    name { nil }
    born_at { 17.years.ago }
  end 
end 

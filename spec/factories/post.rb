FactoryBot.define do
  factory :post do
    association :user
    title { 'titles' }
    content { 'description' }
  end
end

FactoryGirl.define do
    factory :song do
        name { Faker::Lorem.sentence(1) }
        year '2003'
        time 2
        album 'something'
    end
end

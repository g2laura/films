# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
    title    "Movie"
    year     2013
    box      1
    format   "BR"
    position 1
  end

  factory :kind do
    movie  movie
    name   "drama"
  end

  factory :person do
    movie  movie
    name  "actor"
    image "imagen"
  end
end

FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "Rubygames"
    password_confirmation "Rubygames"
  end
end
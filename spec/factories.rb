FactoryGirl.define do
  factory :user do
    name     "John-Henry Liberty"
    email    "johnhenry.liberty@example.com"
    password "password"
    password_confirmation "password"
  end
end
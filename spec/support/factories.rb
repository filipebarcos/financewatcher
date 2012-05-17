FactoryGirl.define do
  factory :user do
    name "Filipe Costa"
    sequence(:email) {|i| "filipe#{i}@financewatcher.com"}
    password "1234"
    password_confirmation "1234"
  end

  preload do
    factory(:filipe_user) do
      FactoryGirl.create(:user)
    end
  end
end
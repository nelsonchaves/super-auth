User.create(email: "admin@example.com", password: "asdfsdaf", password_confirmation: "asdfasdf")
User.create(email: "student@example.com", password: "asdfasdf", password_confirmation: "asdfasdf")
User.update_all confirmed_at: DateTime.now


7.times do
  User.create!([{
    email: Faker::Internet.email,
    password: Devise.friendly_token[0,20]
  }])
end
User.update_all confirmed_at: DateTime.now
2.times do
  User.create!([{
    email: Faker::Internet.email,
    password: Devise.friendly_token[0,20]
  }])
end

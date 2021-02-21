User.create(email: "admin@example.com", password: "admin@example.com", password_confirmation: "admin@example.com")
User.create(email: "student@example.com", password: "student@example.com", password_confirmation: "student@example.com")

7.times do
  User.create!([{
    email: Faker::Internet.email,
    name: Faker::Name.name,
    password: Devise.friendly_token[0,20]
  }])
end
User.update_all confirmed_at: DateTime.now
2.times do
  User.create!([{
    email: Faker::Internet.email,
    name: Faker::Name.name,
    password: Devise.friendly_token[0,20]
  }])
end

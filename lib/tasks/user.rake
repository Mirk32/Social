namespace :user do
  desc 'generate users'
  task generate_users: :environment do
    79.times do |n|
      first_name = Faker::Name.first_name
      last_name = Faker::Name.last_name
      room_number = n + 1
      state_number = n / 20 + 1
      email = Faker::Internet.email
      password = '1234567890'
      User.create({ first_name: first_name, last_name: last_name,
                           room_number: room_number, state_number: state_number,
                           email: email, password: password})
    end
  end
end
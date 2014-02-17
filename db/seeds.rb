require 'faker'

rand(4..10).times do
  password = Faker::Lorem.characters(10)
  u = User.new(
    # name: Faker::Name.name, 
    email: Faker::Internet.email, 
    password: password, 
    password_confirmation: password) 
  u.save

  # Create 6 Customers
  6.times do
    customer = Customer.create!(
      name: Faker::Company.name, 
    )

    rand(5..12).times do
      customer.sites.create!(
          hostname: Faker::Internet.domain_name
      )
    end

    rand(5..12).times do
      customer.sites.sample.events.create!(
        url: Faker::Internet.url,
        created_at: Time.now - rand(600..31536000)
      )
    end
  end

end

User.create!(
  # name: 'Admin User',
  email: 'admin@example.com', 
  password: 'helloworld', 
  password_confirmation: 'helloworld'
)


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Customer.count} customers created"
puts "#{Event.count} events created"

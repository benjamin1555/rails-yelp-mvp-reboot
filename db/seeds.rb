require 'faker'

puts "Clearing database..."
Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  )

  puts "Created restaurant id.#{restaurant.id}"
end

puts "Seeding successfully done!"

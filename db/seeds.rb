require 'faker'

user = User.create(
    username: "Test",
    email: "test@email.com",
    password: "123qwe"
)

5.times do
    date = Faker::Date.in_date_period
    item = Item.create(
        name: Faker::Commerce.product_name,
        brand: Faker::Company.name,
        size: rand(7..12).to_s,
        purchased_from: Faker::Address.city,
        item_cost: rand(1.0..100.0).round(2),
        purchase_date: date.strftime('%B %d, %Y')
    )
    user.items << item
end
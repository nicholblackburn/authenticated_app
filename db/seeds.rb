categories = [ 'Sports', 'FlyFishing', 'Mountain Biking', 'Tequila', 'Parenting']
featured = [true, false]

100.times do
  Authentic.create(
    name: Faker::RickAndMorty.character,
    description: Faker::RickAndMorty.quote,
    version: Faker::Number.digit,
    author: Faker::RickAndMorty.character,
    category: categories.sample,
    price: Faker::Commerce.price,
    logo: Faker::Company.logo,
    featured: featured.sample
  )
end 

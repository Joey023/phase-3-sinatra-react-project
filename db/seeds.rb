puts "🌱 Seeding spices..."
User.destroy_all
Shoe.destroy_all
Post.destroy_all

puts "Creating users..."
u1 = User.create(name: "Peter Parker")
u2 = User.create(name: "Bruce Banner")

puts "Creating shoes..."
s1 = Shoe.create(brand: "Nike", name: "Air Jordans", description: "Very dope shoe", color: "mocha", size: "15", price: 200) 
s2 = Shoe.create(brand: "Adidas", name: "yeezy", description: "Super cool shoe", color: "black", size: "13", price: 500) 
s3 = Shoe.create(brand: "Nike", name: "Air force 1s", description: "super dope shoe", color: "white", size: "12", price: 300) 
s4 = Shoe.create(brand: "Vans", name: "skater", description: "off the wall", color: "black/white", size: "1o", price: 100) 
s5 = Shoe.create(brand: "Adidas", name: "Air shock", description: "awesome shoe", color: "blue", size: "9", price: 200) 

puts "Creating posts..."
Post.create(rating: "i really love this shoe its been all around great", user_id: u1.id, shoe_id: s1.id) 
Post.create(rating: "super amazing shoe i couldnt love it more", user_id: u2.id, shoe_id: s2.id) 
Post.create(rating: "awesome shoe with suprisingly amazing comfort", user_id: u1.id, shoe_id: s3.id) 
Post.create(rating: "i hate this shoe it makes my feet smell so bad", user_id: u2.id, shoe_id: s4.id) 
Post.create(rating: "its an okay shoe ive had better", user_id: u1.id, shoe_id: s5.id)

puts "✅ Done seeding!"


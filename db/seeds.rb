randomPassword = Devise.friendly_token.first(8)
puts "Password for admin@example.com is: " + randomPassword
mainAdminUser = User.create!(email: "admin@example.com", password: randomPassword)

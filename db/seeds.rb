puts 'Importing seed data....'
unless User.exists?(email: 'admin@example.com')
  User.create!(email: 'admin@example.com', password: '11111111', password_confirmation: '11111111')
end    

# add seeds above this line
puts 'Done'


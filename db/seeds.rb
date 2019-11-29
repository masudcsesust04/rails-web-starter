puts 'Importing seed data....'
unless User.exists?(email: 'admin@example.com')
  User.create!(email: 'admin@example.com', password: '123123', password_confirmation: '123123')
end    

# add seeds above this line
puts 'Done'

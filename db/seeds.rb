puts 'Importing seed data....'
unless User.exists?(email: 'admin@example.com')
  User.create!(email: 'admin@example.com', password: '123123', password_confirmation: '123123')
end

if Role.count.zero?
  Role.create!(name: 'Administrator', description: 'Admin of the application can be able to perform any operation', published: true)
  Role.create!(name: 'Moderator', description: 'Moderator of the application can be able to perform assigned permissions', published: true)
  Role.create!(name: 'Editor', description: 'Editor of the application can be able to perform edit of the assigned permissions', published: true)
  Role.create!(name: 'Viewer', description: 'Viewer of the application can be able to perform view only anything.', published: true)
end

# add seeds above this line
puts 'Done'

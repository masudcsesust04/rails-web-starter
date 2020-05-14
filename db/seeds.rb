puts 'Importing seed data....'
unless User.exists?(email: 'admin@example.com')
  User.create!(name: 'admin', email: 'admin@example.com', password: 'Admin@123', password_confirmation: 'Admin@123')
end

if Role.count.zero?
  Role.create!(name: 'Administrator', description: 'Admin of the application can be able to perform any operation', published: true)
  Role.create!(name: 'Moderator', description: 'Moderator of the application can be able to perform assigned permissions', published: true)
  Role.create!(name: 'Editor', description: 'Editor of the application can be able to perform edit of the assigned permissions', published: true)
  Role.create!(name: 'Viewer', description: 'Viewer of the application can be able to perform view only anything.', published: true)
end

# assing admin role to the user
user = User.first
unless user.nil?
  role = Role.first
  user.roles << role
  user.save
end

# add seeds above this line
puts 'Done'

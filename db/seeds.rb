puts 'Importing seed data....'

if Role.count.zero?
  Role.create!(name: 'Administrator', description: 'Admin of the application can be able to perform any operation', published: true)
  Role.create!(name: 'Editor', description: 'Editor of the application can be able to perform edit of the assigned permissions', published: true)
  Role.create!(name: 'Viewer', description: 'Viewer of the application can be able to perform view only anything.', published: true)
end

unless User.exists?(email: 'admin@example.com')
  user  = User.create!(name: 'admin', email: 'admin@example.com', password: 'Admin@123', password_confirmation: 'Admin@123')
  role  = Role.first
  user.roles << role
  user.save!
end

if Todo.count.zero?

  creator = User.first

  (1..10).each do |i|
    Todo.create!(summary: "Task no #{i}", description: "Description", published: true, creator: creator)
  end
end

# add seeds above this line
puts 'Done'


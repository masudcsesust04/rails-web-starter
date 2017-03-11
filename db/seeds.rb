puts '=== creating user ==='
User.create!(
    email: 'admin@example.com',
    password: '11111111',
    password_confirmation: '11111111') if User.find_by_email('admin@example.com').nil?
puts '=== end ==='

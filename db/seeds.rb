# create admin user
User.where(email: 'admin@local.host').first_or_create do |user|
  user.password = '12345678'
end
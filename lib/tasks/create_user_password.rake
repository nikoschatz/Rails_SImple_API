require 'rake'


task :create_token, [:email] => [:environment] do |t, args|
  email= args[:email]
  puts "Generating token for user with email #{email}\ntoken:\n"
  user=User.find_by(email: email)
  raise "User not found for email #{email}" unless user.present?
  puts Knock::AuthToken.new(payload: {sub: user.id}).token

end


task :create_user, [:email, :password] => [:environment] do |t, args|
  email= args[:email]
  password= args[:password]
  puts "Generating token for user with email #{email}\ntoken:\n"
  user=User.create(email: email, password: password)
  puts Knock::AuthToken.new(payload: {sub: user.id}).token

end

# database of users
users = [
  { username: 'user1', password: 'password1' },
  { username: 'user2', password: 'password2' },
  { username: 'user3', password: 'password3' },
  { username: 'user4', password: 'password4' },
  { username: 'user5', password: 'password5' }
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  'Credentials were not correct' # Ruby will return last line without a return statement
end

puts 'Welcome to the Authenticator App'
32.times { print '-' }
puts
puts 'This app will take input from the user and authenticate password'
puts 'If password is correct, the user object will be returned'

attempts = 0

while attempts < 3
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts 'Press q to quit or any other key to continue: '
  input = gets.chomp.downcase
  break if input == 'q'
  attempts += 1
end

puts 'You have exceeded the number of attempts!' if attempts == 3

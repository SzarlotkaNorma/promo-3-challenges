require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

def ask(prompt)
  print "#{prompt} "
  gets.to_s.chomp
end

def create_post(user)
  name = ask('Name:')
  source_url = ask('Source URL:')
  rating = ask('Rating:')
  post_params = { name: name, source_url: source_url, date: Time.now, rating: rating }

  # TODO: use ActiveRecord to add a new post for the user logged in!
  user.post.create(post_params)
end

def list_posts(user)
  # TODO: use ActiveRecord to get all posts of the current user
  posts = user.post.all
  posts.each do |post|
    pusts post.name
  end
end

def delete_posts(user)
  # TODO: use ActiveRecord to delete all posts of current user
  user.post.delete_all
end


while true
  logged_in = false
  # TODO: instantiate a user with his <id>

  until logged_in
    puts 'Please login with your <id>'
    user_id = ask('id')
    user = User.find_by_id(user_id)
    if user == nil
      logged_in = false
    else
      logged_in = true
    end
  end

  exit = false

  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

  case ask('>').to_i
  when 1 then create_post(user)
  when 2 then list_posts(user)
  when 3 then delete_posts(user)
  when 4 then exit = true
  end
end

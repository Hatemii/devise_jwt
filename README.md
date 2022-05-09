Rest Api using Devise + Jwt for authentication

using:
  gem "rack-cors"
  gem 'devise'
  gem 'devise-jwt'
  
before starting server -> remove app/config/credentials.yml.enc
console -> bundle exec rails secret
rails s

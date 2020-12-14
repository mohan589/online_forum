bundle install && npm install
rails db:create
rails db:migrate
rails db:seed

echo 'Default user id: forum@gmail.com, and password: secret'

echo "login at http://localhost:3000"

rails s
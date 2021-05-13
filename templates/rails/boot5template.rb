rails new $1 --skip-javascript --skip-sprockets && cd $1

bundle add webpacker
rails webpacker:install

mv app/javascript app/frontend


# Inside webpacker.yml, first lines
default: &default
source_path: app/frontend


yarn add bootstrap

mkdir app/frontend/js && touch app/frontend/js/bootstrap.js

puts "
// import \'bootstrap/js/src/alert\'  
// import \'bootstrap/js/src/button\'  
// import \'bootstrap/js/src/carousel\'  
// import \'bootstrap/js/src/collapse\'  
// import \'bootstrap/js/src/dropdown\'  
// import \'bootstrap/js/src/modal\'  
// import \'bootstrap/js/src/popover\'  
// import \'bootstrap/js/src/scrollspy\'  
// import \'bootstrap/js/src/tab\'  
// import \'bootstrap/js/src/toast\'  
// import \'bootstrap/js/src/tooltip'"


# Inside app/frontend/packs/application.js
import '../js/bootstrap.js'
mv app/frontend/packs/application.scss app/frontend/packs/application.sass 
puts '@import \'~bootstrap/scss/bootstrap\'' >> app/frontend/packs/application.sass

#apply to the application.html.erb file
<=%= stylesheet_pack_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
<%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>


bundle install guard
bundle binstub guard

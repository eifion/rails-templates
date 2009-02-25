load_template "/Users/eifion/rails/apps_for_asciicasts/base_template.rb"

name = ask("What would you like the user to be called?")
generate :nifty_authentication, name
rake "db:migrate"
git :add => ".", :commit => "-m 'adding authentication'"

generate :controller, "welcome index"
route "map.root :controller => 'welcome'"
git :rm => "public/index.html"
git :add => ".", :commit => "-m 'adding welcome controller.'"
name "base"
description " Recipies for all nodes"
run_list "recipe[security]", "recipe[localusers]", "recipe[chef-client::delete_validation]", "recipe[chef-client::cron]", "recipe[chef-client]"

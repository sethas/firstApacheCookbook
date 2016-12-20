name "webserver"
description " webservers role"
run_list "role[base]", "recipe[apache]"

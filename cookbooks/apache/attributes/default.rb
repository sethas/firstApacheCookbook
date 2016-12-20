default["apache"]["sites"]["amitseth72"] = { "site_title" => "Amit2 website", "port" => 80, "domain" => "amitseth72.mylabserver.com" }
default["apache"]["sites"]["amitseth72b"] = { "site_title" => "Amit 2b website", "port" => 80, "domain" => "amitseth72b.mylabserver.com" }
default["apache"]["sites"]["amitseth73"] = { "site_title" => "Amit3 website", "port" => 80, "domain" => "amitseth73.mylabserver.com" }

default["author"]["name"] = "amit"
case node["platform"]
when "centos"
	default["apache"]["package"] = "httpd"
when "debian"
	default["apache"]["package"] = "apache2"
end

# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "amit"
client_key               "#{current_dir}/amit.pem"
chef_server_url          "https://amitseth75.mylabserver.com/organizations/sethas"
cookbook_path            ["#{current_dir}/../cookbooks"]

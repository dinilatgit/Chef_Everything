# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "dinil_ops"
client_key               "#{current_dir}/dinil_ops.pem"
validation_client_name   "dinil_org-validator"
validation_key           "#{current_dir}/dinil_org-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/dinil_org"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

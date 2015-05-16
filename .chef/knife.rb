current_dir 			= File.dirname(__FILE__)
log_level				:info
log_location			STDOUT
cache_type				'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path           ["#{current_dir}/../site-cookbooks","#{current_dir}/../cookbooks"]
node_path     			"#{current_dir}/../nodes"
role_path				"#{current_dir}/../roles"
data_bag_path			"#{current_dir}/../data_bags"
environment_path		"#{current_dir}/../environments"

cookbook_copyright       "Nilesh Londhe"
cookbook_email           "nilesh@cloudgeni.us"
cookbook_license         "apachev2"

knife[:berkshelf_path]	= "cookbooks"

knife[:digital_ocean_client_id] = 'changethis'
knife[:digital_ocean_api_key]   = 'changethis'

knife[:aws_access_key_id]     = "changethis"
knife[:aws_secret_access_key] = "changethis"
knife[:region]                  = "us-west-2"

knife[:rackspace_api_username] = "changethis"
knife[:rackspace_api_key] = "changethis"
knife[:rackspace_version] = 'v2'

#knife[:secret_file]		= "#{current_dir}/encrypted_data_bag_secret" # Uncomment this line later
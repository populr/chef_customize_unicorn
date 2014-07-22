#
# Cookbook Name:: chef_customize_unicorn
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

config_file = "/srv/www/touchstream/shared/config/unicorn.conf"

execute "update #{config_file} to reconnect to Redis after forking" do
  command "sed -i '/after_fork/a\\  defined?(REDIS) and REDIS.client.reconnect' #{config_file}"
end

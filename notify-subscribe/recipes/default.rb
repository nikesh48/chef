#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
include_recipe '::log12'

package 'httpd'

file '/var/www/html/index.html' do
  content "Welcome to Chef Experiments - cookbooks - FIRST CHANGE "
end

service 'httpd' do
  action :start
end

template '/var/www/html/index-1.html' do
  source 'index.html.erb'
end

template '/etc/httpd/conf/httpd.conf' do
  source 'httpd.conf.erb'
  notifies :restart, 'service[httpd]', :delayed
end

file '/var/www/html/index-new.html' do
  content "Welcome to Chef Class - cookbooks - index New"
  subscribes :delete, 'file[/var/www/html/index.html]', :immediately
end




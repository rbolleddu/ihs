#
# Cookbook:: ihs
# Recipe:: ihs
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

file 'var/www/html/index.html' do
  content 'hi welcome to chef'
end

service 'httpd' do 
  action [ :enable, :start]
end

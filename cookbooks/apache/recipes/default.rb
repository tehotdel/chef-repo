#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#case node['platform']
#when "centos"
#	package_name = 'httpd'
#	service_name = 'httpd'
#	document_root = '/var/www/html'
#when "debian"
#        package_name = 'apache2'
#        service_name = 'apache2'
#        document_root = '/var/www'
#end
#
#
package "httpd" do
	action :install
end

template "/var/www/html/index.html" do
	source "index.html.erb"
	mode "0644"
end

service "httpd" do
	action [ :enable, :start ]
end


#cookbook_file "#{document_root}/index.html" do
#	source 'index.html'
#	mode '0644'
#end

if node['platform'] == 'debian' || node['platform'] == 'ubuntu' || node['platform'] == 'centos'
	log "The host name for the node: #{node['hostname']}!" do
  		level :info
	end
end	


# Condistions Based on if-else and include_recipe
if node['platform_family'] == 'rhel'

	log "The host name for the LINUX: #{node['hostname']}!" do
                level :info
        end
else
	log "The host name for the WINDOWS: #{node['hostname']}!" do
                level :info
        end
end

# not_if
file '/home/centos/chef/test.txt' do
  mode '0755'
  not_if { File.exist?('/home/centos/chef/test.txt' )}
end

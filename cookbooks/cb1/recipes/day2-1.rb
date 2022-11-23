file '/home/centos/nikesh.sh' do
  mode '0755'
  owner 'ec2-user'
  group 'root'
end

file '/home/centos/temp.txt' do
        content "TEST MESSAGE"
        action :create
        action :touch
end
#execute 'Execute my script' do
#        command './nikesh.sh'
#end


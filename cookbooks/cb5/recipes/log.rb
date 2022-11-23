node.default['web']['file'] = 'temp.txt'
file "#{node['web']['file']}" do

end


log "This is my fist logging message." do
  level :info
end

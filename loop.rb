# ==============================================
# Program Example - 1
# ==============================================
['vim', 'ntp', 'git', 'tree'].each do |package|
	package package do
   		action :install
 	end
end

# ==============================================
# Program Example -2
# ==============================================
packages = ['vim', 'ntp', 'git']
packages.each do |package|
	package package do
   		action :install
 	end
end

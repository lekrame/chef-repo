directory '/home/ubuntu/bin' do
	owner 'ubuntu'
	group 'ubuntu'
	mode '0777'
	action :create
end

git '/home/ubuntu/bin' do
	repository 'git://github.com/lekrame/bin.git'
	action :sync
end

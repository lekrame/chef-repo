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

bash 'profile' do
	code 'ln -s bin/.aliases .aliases '
	code 'ln -s bin/.bash_profile .bash_profile '
	code 'ln -s bin/.exrc .exrc '
end

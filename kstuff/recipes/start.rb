apt_update 'update' do
	action :update
end

bash 'ini0' do
	code 'sudo yes "" | sudo apt-add-repository ppa:brightbox/ruby-ng'
end

bash 'ini1' do
	code 'sudo apt-get update'
end

bash 'ini1.1' do
	code 'sudo apt-get upgrade'
end

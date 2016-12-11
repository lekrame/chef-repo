apt_update 'update' do
	action :update
end

bash 'ini0' do
	code ''yes "" |sudo apt-add-repository ppa:brightbox/ruby-ng'
end

bash 'ini1' do
	code 'sudo apt-get upgrade'
end

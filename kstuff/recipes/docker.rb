bash 'dockerinstall' do
	code <<-EOC
		curl -fsSL https://get.docker.com/ | sh;
  	sudo usermod -aG docker ubuntu
	EOC
end

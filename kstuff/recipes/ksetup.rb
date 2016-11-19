apt_update 'update' do
	action :update
end

apt_package 'awscli' do
  action :install
end

apt_package 'ruby' do
  action :install
end

gem_package 'mail' do
  action :install
end

gem_package 'twilio-ruby' do
  action :install
end

gem_package 'json' do
  action :install
end

gem_package 'encrypted_strings' do
  action :install
end


directory '/home/ubuntu/kramer'
directory '/home/ubuntu/kramer/apps'
git 'server' do
	destination '/home/ubuntu/kramer/apps'
	repository 'git://github.com/lekrame/chat.git'
end
gem_package 'mail'

gem_package 'twilio-ruby'

gem_package 'json'

gem_package 'encrypted_strings'

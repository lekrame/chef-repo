directory '/home/ubuntu/kramer'
directory '/home/ubuntu/kramer/apps'
git 'server' do
	destination '/home/ubuntu/kramer/apps'
	repository 'git://github.com/lekrame/chat.git'
end

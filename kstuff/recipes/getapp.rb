directory '/home/ubuntu/kramer'
directory '/home/ubuntu/kramer/apps'
git 'server' do
	destination '/home/ubuntu/kramer/apps'
	repository 'git://github.com/lekrame/chef-repo/kstuff/recipes.git'
end

bash 'profile' do
	cwd '/home/ubuntu'
	user 'ubuntu'
	group 'ubuntu'
#	code ' touch .aliases; rm -f  .aliases ; touch .bash_profile; rm -f  .bash_profile ; touch .exrc; rm -f  .exrc ; ln -s bin/.aliases .aliases ; ln -s bin/.bash_profile .bash_profile ; ln -s bin/.exrc .exrc '
	code <<-EOC
	touch .aliases
	rm -f  .aliases 
	touch .bash_profile
	rm -f  .bash_profile 
	touch .exrc
	rm -f  .exrc 
	ln -s bin/.aliases .aliases 
	ln -s bin/.bash_profile .bash_profile 
	ln -s bin/.exrc .exrc 
	EOC
end
#bash 'profile' do
#	code 'touch .aliases; rm -f  .aliases '
#	code 'touch .bash_profile; rm -f  .bash_profile '
#	code 'touch .exrc; rm -f  .exrc '
#	code 'ln -s bin/.aliases .aliases '
#	code 'ln -s bin/.bash_profile .bash_profile '
#	code 'ln -s bin/.exrc .exrc '
#end

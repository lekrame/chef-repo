bash 'profile' do
	cwd '/home/ubuntu'
	user 'ubuntu'
	group 'ubuntu'
	code ' touch .aliases; echo toucha > toucha; rm -f  .aliases ; echo rma > rma; touch .bash_profile; echo touchb > touchb; rm -f  .bash_profile ; echo rmb > rmb; touch .exrc; echo touche > touche; rm -f  .exrc ; echo rme > rme; ln -s bin/.aliases .aliases ; echo lna > lna; ln -s bin/.bash_profile .bash_profile ; echo lnb > lnb; ln -s bin/.exrc .exrc '
end
#bash 'profile' do
#	code 'touch .aliases; rm -f  .aliases '
#	code 'touch .bash_profile; rm -f  .bash_profile '
#	code 'touch .exrc; rm -f  .exrc '
#	code 'ln -s bin/.aliases .aliases '
#	code 'ln -s bin/.bash_profile .bash_profile '
#	code 'ln -s bin/.exrc .exrc '
#end

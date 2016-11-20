apt_update 'update' do
	action :update
end

apt_package 'awscli' do
  action :install
end

bash 'ini0' do
	code 'sudo apt-add-repository ppa:brightbox/ruby-ng'
end

bash 'ini1' do
	code 'sudo apt-get update'
end

bash 'ini2' do
	code 'sudo apt-get -y  install ruby2.2'
end

bash 'init' do
	ignore_failure true
	code 'sudo update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby2.2 400 \
	 --slave /usr/bin/rake rake /usr/bin/rake2.2 \
	 --slave /usr/bin/ri ri /usr/bin/ri2.2 \
	 --slave /usr/bin/rdoc rdoc /usr/bin/rdoc2.2 \
	 --slave /usr/bin/gem gem /usr/bin/gem2.2 \
	 --slave /usr/bin/irb irb /usr/bin/irb2.2 \
	 --slave /usr/share/man/man1/ruby.1.gz ruby.1.gz /usr/share/man/man1/ruby2.2.1.gz \
	 --slave /usr/share/man/man1/rake.1.gz rake.1.gz /usr/share/man/man1/rake2.2.1.gz \
	 --slave /usr/share/man/man1/ri.1.gz ri.1.gz /usr/share/man/man1/ri2.2.1.gz \
	 --slave /usr/share/man/man1/rdoc.1.gz rdoc.1.gz /usr/share/man/man1/rdoc2.2.1.gz \
	 --slave /usr/share/man/man1/gem.1.gz gem.1.gz /usr/share/man/man1/gem2.2.1.gz \
	 --slave /usr/share/man/man1/irb.1.gz irb.1.gz /usr/share/man/man1/irb2.2.1.gz'
end

gem_package 'mail'

gem_package 'twilio-ruby'

gem_package 'json'

gem_package 'encrypted_strings'

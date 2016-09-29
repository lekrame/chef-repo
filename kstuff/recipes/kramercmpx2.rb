directory '/tmp/message'

file "/tmp/message/motd" do
	content "\n\nInstance started at " + Time.new.inspect + "\n\
	Node IP address = " + #{node['ipaddress']} + " running " \
	#{node['platform']}\n\n"
end

file "~/startup.bash" do
	content "#!/bin/bash\
	# peekaboo
	touch /tmp/touchme\
	touch /tmp/myjunk
	"
	mode '0777'
end

execute "start-this-thing" do
	command '~/startup.bash'
end

Chef::Log.info('did Kramer get logged?')

execute "message-of-the-day" do
	command 'cp /tmp/message/motd /etc'
	ignore_failure :true
end

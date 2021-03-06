directory '/tmp/message'

file '/tmp/message/motd' do
  content "\n\nInstance started at #{Time.new.inspect}\n\
  Node IP address = #{node['ipaddress']} running #{node['platform']}"
  action :create
  mode '0777'
end

file '/tmp/message/mot2' do
  content "\n\nInstance started at #{Time.new.inspect}\
  Node IP address = #{node['ipaddress']} running #{node['platform']}\n\n"
  action :create
  mode 0777
end

file '/home/ubuntu/startup.bash' do
  content "#!/bin/bash\n\
  # peekaboo\n\
  touch /tmp/touchme\n\
  touch /tmp/myjunk\n"
  action :create
  mode 0777
end

execute 'start-this-thing' do
  command '/home/ubuntu/startup.bash'
end

Chef::Log.info('did Kramer get logged?')

execute 'message-of-the-day' do
  command 'cp /tmp/message/motd /etc'
  ignore_failure true
end

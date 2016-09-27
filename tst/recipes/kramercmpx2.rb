directory '/tmp/message'

file "/tmp/message/motd" do
	content Time.new.inspect
end

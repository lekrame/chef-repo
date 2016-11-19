directory '/tmp/message'
file '/tmp/message/tst'
bash "tst00" do
	code << EOT
		touch /tmp/myjunk2
EOT
end

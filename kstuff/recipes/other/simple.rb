#directory '/tmp/message'
#file '/tmp/message/tst'
#bash "tst00" do
#	code <<-EOT
#		touch /tmp/myjunk2
#		EOT
#end

#bash "tst00" do code 'touch /tmp/myjunk3' end
#bash "tst00" do 
#	code 'touch /tmp/myjunk3'
#end

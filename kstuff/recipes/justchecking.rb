bash "trythis" do
  code <<-EOH
  touch /tmp/node['touchfile']
  echo "#{node['touchfile']}" > /tmp/touchname
  EOH
end 

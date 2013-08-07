# Use RVM ruby instead of system when running in TextMate
template "#{ENV['HOME']}/.tm_properties" do
  source 'textmate/tm_properties.erb'
  owner node['current_user']
  group 'staff'
  mode 00644
end

# Rdoc bundle
git "#{ENV['HOME']}/Library/Application Support/Avian/Bundles/RDoc.tmbundle" do
  repository "https://github.com/ged/RDoc.tmbundle.git"
  action :sync
end

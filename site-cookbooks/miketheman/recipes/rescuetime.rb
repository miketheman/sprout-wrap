dmg_properties = node['sprout']['rescuetime']['dmg']

dmg_package "RescueTime" do
  source   dmg_properties['source']
  checksum dmg_properties['checksum']
  action :install
  owner node['current_user']
end

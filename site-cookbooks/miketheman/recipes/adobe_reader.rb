dmg_properties = node['sprout']['adobe_reader']['dmg']

dmg_package "Adobe Reader XI Installer" do
  source   dmg_properties['source']
  checksum dmg_properties['checksum']
  action :install
  volumes_dir dmg_properties['volume']
  type "pkg"
  package_id dmg_properties['pkg_id']
end

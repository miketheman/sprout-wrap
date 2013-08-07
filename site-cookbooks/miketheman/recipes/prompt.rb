# Drop off my customized prompt file

directory "#{ENV['HOME']}/.bash_it/themes/miketheman/" do
  user node['current_user']
  group 'staff'
end

template "#{ENV['HOME']}/.bash_it/themes/miketheman/miketheman.theme.bash" do
  source 'bash_it/themes/miketheman.theme.bash'
  user node['current_user']
  group 'staff'
  mode 00755
end

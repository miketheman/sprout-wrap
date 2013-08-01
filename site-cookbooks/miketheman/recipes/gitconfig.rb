execute "set user.name" do
  command "git config --global user.name 'Mike Fiedler'"
  user node['current_user']
end

execute "set user.email" do
  command "git config --global user.email miketheman@gmail.com"
  user node['current_user']
end

link "#{ENV['HOME']}/git" do
  to "#{ENV['HOME']}/Dropbox/code/github"
end

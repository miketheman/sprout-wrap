# Ensure that the .ssh directory is set up
directory "#{ENV['HOME']}/.ssh" do
  owner node['current_user']
  group 'staff'
  mode 00700
end

# If these fail, it's probably because Dropbox was just installed and hasn't synced yet.
%w{
  id_rsa
  id_rsa.pub
  config
}.each do |sshfile|
  link "#{ENV['HOME']}/.ssh/#{sshfile}" do
    to "#{ENV['HOME']}/Dropbox/sync/dotfiles/.ssh/#{sshfile}"
  end
end

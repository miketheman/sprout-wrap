# Install chefvm https://github.com/trobrock/chefvm
git "#{ENV['HOME']}/.chefvm" do
  repository "https://github.com/trobrock/chefvm.git"
  action :checkout
  user node['current_user']
end

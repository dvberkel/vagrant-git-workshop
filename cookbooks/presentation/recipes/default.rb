execute "update sources" do
  command "apt-get update"
end

# package groups
vcs = %w{git-core}
window_manager = %w{xserver-xorg xinit openbox obmenu lightdm-gtk-greeter}
window_applications = %w{xterm firefox}

# all packages to install
packages = [ vcs, window_manager, window_applications ]

packages.flatten.each do |a_package|
  package a_package
end

directories = %w{home/vagrant/scratch /home/vagrant/.config /home/vagrant/.config/openbox}
directories.each do |directory|
  directory directory do
    owner "vagrant"
    group "vagrant"
    mode "0755"
    recursive true
    action :create
  end
end

cookbook_file "/home/vagrant/.config/openbox/menu.xml" do
  source "menu.xml"
  mode "0644"
  owner "vagrant"
  group "vagrant"
end

cookbook_file "/home/vagrant/scratch/setup.sh" do
  source "setup.sh"
  mode "0754"
  owner "vagrant"
  group "vagrant"
end

cookbook_file "/home/vagrant/scratch/git-deamon.sh" do
  source "git-deamon.sh"
  mode "0754"
  owner "vagrant"
  group "vagrant"
end





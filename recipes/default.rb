#
# Cookbook:: task
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

# Step -1
# Disale Selinux to run Cobbler
#selinux_install 'selinux'

selinux_state 'disabled' do
  automatic_reboot true
  action :disabled
end

# Step -2
# Note that the password is a password shadow hash and can be generated as follows:
# openssl passwd -1 "password"
 
user "apache" do
  supports :manage_home => true
  home "/home/apache"
  shell "/bin/bash"
  password "$1$JJsvHslV$szsCjVEroftprNn4JHtDi."
  not_if "getent passwd newuser"
end

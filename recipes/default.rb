#
# Cookbook:: task
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

# Disale Selinux to run Cobbler
selinux_install 'selinux'

selinux_state 'disabled' do
  automatic_reboot true
  action :disabled
end



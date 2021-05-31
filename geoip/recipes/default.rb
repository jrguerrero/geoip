#
# Cookbook:: geoip
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute "geoip-script" do
  command 'for i in $(cat ~/chef/files/dnsnames.txt); do echo $i: && sh ~/chef/files/geoip.sh $i; done > ~/chef/files/dnslocation.txt'
  ignore_failure true
end

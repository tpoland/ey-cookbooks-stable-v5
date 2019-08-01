action = node.engineyard.metadata(:nginx_action,:restart)
using_openssl_101 = (node.engineyard.metadata('openssl_ebuild_version','1.0.1') =~ /1\.0\.1/)

# YT-CC-1320
# FB-657
default['nginx']['version'] = node.engineyard.metadata('nginx_ebuild_version','1.12.2')
default['nginx']['action'] = action
default['nginx']['http2'] = false


Chef::Log.info("Version: #{nginx[:version]}, Passenger Gem:#{nginx[:passenger_gem]}\n")

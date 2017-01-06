remote_directory node['chef_handler']['handler_path'] do
  source 'handlers'
  recursive true
  action :create
end

chef_handler 'WindowsRebootHandler' do
  source "#{node['chef_handler']['handler_path']}/windows_reboot_handler.rb"
  arguments node['windows']['allow_pending_reboots']
  supports report: true, exception: node['windows']['allow_reboot_on_failure']
  action :enable
end

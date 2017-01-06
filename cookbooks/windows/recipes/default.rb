# gems with precompiled binaries
%w( win32-api win32-service ).each do |win_gem|
  chef_gem win_gem do
    options '--platform=mswin32'
    action :install
    compile_time false if respond_to?(:compile_time)
  end
end

# the rest
%w( windows-api windows-pr win32-dir win32-event win32-mutex ).each do |win_gem|
  chef_gem win_gem do
    action :install
    compile_time false if respond_to?(:compile_time)
  end
end

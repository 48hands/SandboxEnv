remote_file "/etc/hosts"

package "epel-release"


execute "yum --enablerepo=epel -y install rabbitmq-server" do
  not_if "test -d /var/lib/rabbitmq"
end

service "rabbitmq-server" do
  action [:start,:enable]
end

service "rabbitmq-server" do
  action [:stop]
end

# remote_file "/var/lib/rabbitmq/.erlang.cookie" do
#   owner "rabbitmq"
#   group "rabbitmq"
#   mode "400"
# end


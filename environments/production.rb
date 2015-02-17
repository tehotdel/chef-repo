name "production"
description "For production!"
#cookbook "apache", "= 0.2.0"
#cookbook "chef-client", "= 4.2.0"
#cookbook "cron", "= 1.6.1"
#cookbook "logrotate", "= 1.8.0"

cookbook_versions({
    "apache" => "= 0.2.0",
    "chef-client" => "= 4.2.0",
    "logrotate" => "= 1.8.0",
    "cron" => "1.6.1"
  })

default_attributes(
  "chef_client" => {
    "interval" => 300
  }
)
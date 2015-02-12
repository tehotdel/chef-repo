data_bag("vhosts").each do |site|
  site_data = data_bag_item("vhosts", site)
  site_name = site_data["id"]
  document_root = "/srv/apache/#{site_name}"
end
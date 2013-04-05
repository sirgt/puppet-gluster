class glusterfs::probe($is_server,$server1_ip,$server2_ip) {
	if $is_server == true {
		exec { "trusted_pool1":
			command => "gluster peer probe $server1_ip",
			path	=> "/usr/sbin/",
		}

		exec { "trusted_pool2":
			command => "gluster peer probe $server2_ip",
			path	=> "/usr/sbin/",
		}
	}
}
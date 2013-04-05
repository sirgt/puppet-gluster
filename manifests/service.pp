class  glusterfs::service($is_server) {
	if $is_server == true { 
		service {"glusterd":
			ensure => running,
			hasstatus =>true,
			hasrestart => true,
			enable => true,
			require => Class["glusterfs::install"],
		}	
	}
}
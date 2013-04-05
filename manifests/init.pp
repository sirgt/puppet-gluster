class glusterfs($is_server=false,$server1_ip='127.0.0.1', $server2_ip='127.0.0.1') {
	
	class { 'glusterfs::install':
		is_server => $is_server,
	}
	
	class { 'glusterfs::service':
		is_server => $is_server,
	}
	
	class {'glusterfs::probe':
		server1_ip => $server1_ip,
		server2_ip => $server2_ip,
		is_server => $is_server,
	}
	class {'glusterfs::mount':
		is_server => $is_server,
	}
}
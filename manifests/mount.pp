class glusterfs::mount($is_server) {
	if $is_server == false {
		$sandocs = "/var/www/sandocs/"
		file { $sandocs:
	    	ensure => "directory",
	    	mode => 755,
			owner => root,
			group => root,
		}

		exec { 'mount_volume':
			command		=> "mount -t glusterfs 10.0.0.2:/gv0 $sandocs",
			path		=> '/bin',
			require		=> [ File [ "$sandocs" ], Class["glusterfs::install"] ],
		}
	}
}

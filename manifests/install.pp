class glusterfs::install($is_server) {

	yumrepo { "glusterfs-epel":
		baseurl => "http://download.gluster.org/pub/gluster/glusterfs/3.3/3.3.1/EPEL.repo/epel-6/x86_64/",
		descr => "The GlusterFs-epel repository",
		enabled => "1",
		gpgcheck => "0",
	}

	yumrepo { "glusterfs-swift-epel":
		baseurl => "http://download.gluster.org/pub/gluster/glusterfs/3.3/3.3.1/EPEL.repo/epel-6/noarch",
		descr => "The GlusterFs-swift-epel repository",
		enabled => "1",
		gpgcheck => "0",
	}

	yumrepo { "glusterfs-source-epel":
		baseurl => "http://download.gluster.org/pub/gluster/glusterfs/3.3/3.3.1/EPEL.repo/epel-6/SRPMS",
		descr => "The GlusterFs-source-epel repository",
		enabled => "1",
		gpgcheck => "0",
	}

	if $is_server == true {
		$glusterFsPackages = 
		[ 
			"xfsprogs",
            "glusterfs-server",
            "glusterfs-vim",
            "glusterfs-fuse",
        ]	
	} else {
		$glusterFsPackages = 
		[ 
            "glusterfs",
            "glusterfs-fuse",
            "glusterfs-rdma",
        ]
	}

	
	package { $glusterFsPackages:
	    ensure => installed
	}

}
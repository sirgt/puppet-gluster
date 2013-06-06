puppet-gluster
==============

Puppet module for installing Gluster FS

Quick module to install and almost configure GlusterFS

Install
-------

Server (on every brick you, for now only supports 3 bricks)

    class {'glusterfs': 
        is_server   => true,
        server1_ip  => '10.0.0.2',
        server2_ip  => '10.0.0.3',
    } 

To mount the volume 

    class {'glusterfs': }

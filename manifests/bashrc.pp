class bash::bashrc inherits bash::params {
  
  # Default for new User and root
  file { [ '/etc/skel/.bashrc', '/root/.bashrc' ]: 
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    source => "puppet:///modules/${module_name}/bashrc-${osfamily}.sh",
    require => Class["bash::install"],
  }

}
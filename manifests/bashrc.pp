class bash::bashrc inherits bash::params {
  
  # Default for new User
  file { '/etc/skel/.bashrc': 
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => "puppet:///modules/${module_name}/bashrc-${osfamily}.sh",
    require => Class["bash::install"],
  }
  
  # User root
  file { '/root/.bashrc': 
    mode    => 0644,
    owner   => 'root',
    group   => 'root',
    content => "puppet:///modules/${module_name}/bashrc-${osfamily}.sh",
    require => Class["bash::install"],
  }
  
}
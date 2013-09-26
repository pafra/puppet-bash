class bash::profiles::defaults inherits bash {  
  file { "${profile_dir}/10-knapp-defaults.sh": 
    mode => 644,
    owner => 'root',
    group => 'root',
    source => "puppet:///modules/${module_name}/10-knapp-defaults.sh",
    require => Class["bash::install"],
  }
}

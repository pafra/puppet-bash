class bash::profiles::prompt inherits bash {  
  file { "${profile_dir}/10-knapp-prompt.sh": 
    mode => 644,
    owner => root,
    group => root,
    source => "puppet:///modules/${module_name}/10-knapp-prompt.sh",
    require => Class["bash::install"],
  }
}

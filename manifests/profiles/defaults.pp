class bash::profiles::defaults {  
  include bash::params                                                                                                                            
  file { $bash::params::defaults_file: 
    mode => 644,
    owner => root,
    group => root,
    content => template($bash::params::defaults_template),
    require => Class["bash::install"]
  }
}

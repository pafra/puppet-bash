class bash::profiles::defaults inherits bash {  
  file { $defaults_file: 
    mode => 644,
    owner => root,
    group => root,
    content => template($defaults_template),
    require => Class["bash::install"]
  }
}

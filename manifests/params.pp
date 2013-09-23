class bash::params {
  case $::osfamily {
    debian: {
      $packages = [ 'bash', 'bash-completion', 'bash-doc']
      $profile_dir = '/etc/profile.d/'
      $defaults_template = 'bash/defaults.sh.erb'
      $defaults_file = "$bash::params::profile_dir/defaults.sh"
    }
    default: {
      fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
    }
  }
  
  
}
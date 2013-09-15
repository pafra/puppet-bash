class bash::params {
  case $::osfamily {
    debian: {
      $packages = [ 'bash', 'bash-completion', 'bash-doc']
      $profile_dir = '/etc/profile.d/'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
    }
  }
  
  
}
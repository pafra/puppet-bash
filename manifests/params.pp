class bash::params {
  
  $user_prompt = '\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
  $root_prompt = '\[\033[01;31m\]\u\[\033[01;32m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]# '
  $histcontrol = 'ignoreboth'
  $histsize = '100000'
  $histfilesize = '20000000'

  $package_ensure = 'latest'
  
  case $::osfamily {
    'Debian': {
      $packages = [ 'bash', 'bash-completion' ]
      $profile_dir = '/etc/profile.d/'
    }
    'RedHat': {
      $packages = [ 'bash' ]
      $profile_dir = '/etc/profile.d/'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
    }
  }
}
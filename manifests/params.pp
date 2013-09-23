class bash::params {
  
  $user_prompt = '\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
  $root_prompt = '\[\033[01;31m\]\u\[\033[01;32m\]@\[\033[01;31m\]\h \[\033[01;33m\]\w # \[\033[00m\]'
  $histcontrol = 'ignoreboth'
  $histsize = '100000'
  $histfilesize = '20000000'
  $skel_file = '/etc/skel/.bashrc'
  $bashrc_file = '/root/.bashrc'

  $package_ensure = 'latest'
  
  case $::osfamily {
    debian: {
      $packages = [ 'bash', 'bash-completion', 'bash-doc']
      $profile_dir = '/etc/profile.d/'
      $defaults_template = 'bash/defaults.sh.erb'
      $defaults_file = "$bash::params::profile_dir/defaults.sh"
      $skel_template = "bash/bashrc.erb"
    }
    default: {
      fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
    }
  }
  
  
}
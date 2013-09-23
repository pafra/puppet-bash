# Class: bash
#
# This module manages bash
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class bash (
  $packages           = $bash::params::packages,
  $profile_dir        = $bash::params::profile_dir,
  $defaults_template  = $bash::params::defaults_template,
  $defaults_file      = $bash::params::defaults_file,
  $user_prompt        = $bash::params::user_prompt,
  $root_prompt        = $bash::params::root_prompt,
  $histcontrol        = $bash::params::histcontrol,
  $histfilesize       = $bash::params::histfilesize,
  $skel_file          = $bash::params::skel_file,
  $skel_template      = $bash::params::skel_templat,
  $package_ensure     = $bash::params::package_ensure,
  $bashrc_file        = $bash::params::root_bashrc,
) inherits bash::params {
  
  include '::bash::install'
  include '::bash::profiles'
  
}

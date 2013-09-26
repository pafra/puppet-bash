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
  $user_prompt        = $bash::params::user_prompt,
  $root_prompt        = $bash::params::root_prompt,
  $histcontrol        = $bash::params::histcontrol,
  $histsize           = $bash::params::histsize,
  $histfilesize       = $bash::params::histfilesize,
  $package_ensure     = $bash::params::package_ensure,
  $packages           = $bash::params::packages,
  $profile_dir        = $bash::params::profile_dir,
) inherits bash::params {
  
  include '::bash::install'
  include '::bash::profiles'
  include '::bash::bashrc'
  
}

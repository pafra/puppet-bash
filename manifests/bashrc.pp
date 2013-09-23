define bash::bashrc (
  $bashrc_file    = $name,
  $prompt         = $bash::params::user_prompt,
  $skel_template  = $bash::params::skel_template,
  $histsize       = $bash::params::histsize,
  $histfilesize   = $bash::params::histfilesize,
  $histcontrol    = $bash::params::histcontrol,
  $owner          = 'root',
  $group          = 'root',
) {
    file { $bashrc_file: 
    mode => 644,
    owner => $owner,
    group => $group,
    content => template($skel_template),
    require => Class["bash::install"]
  }
}
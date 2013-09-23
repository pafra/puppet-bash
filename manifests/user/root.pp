class bash::user::root (
  $prompt             = $bash::params::root_prompt,
  $histcontrol        = $bash::params::histcontrol,
  $histfilesize       = $bash::params::histfilesize,
  $skel_file          = $bash::params::skel_file,
  $skel_template      = $bash::params::skel_templat,
) inherits bash::params {

  bashrc { "/root/.bashrc": 
    owner = 'root',
    group = 'root',
  }
  
}
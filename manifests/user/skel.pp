class bash::user::skel (
  $prompt             = $bash::params::user_prompt,
  $histcontrol        = $bash::params::histcontrol,
  $histfilesize       = $bash::params::histfilesize,
  $skel_file          = $bash::params::skel_file,
  $skel_template      = $bash::params::skel_template,
) inherits bash::params {


  bash::bashrc { "/etc/skel/.bashrc": 
    prompt        => "$prompt",
    histcontrol   => "$histcontrol",
    histfilesize  => "$histfilesize",
    skel_template => "$skel_template",
    owner         => 'root',
    group         => 'root',
  }
  
}
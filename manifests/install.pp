class bash::install {
  include bash::params
  package { $bash::params::packages:
    ensure => latest,
  }
}
class bash::install inherits bash {
  package { $packages:
    ensure => $package_ensure,
  }
}
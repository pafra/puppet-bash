class bash::profiles inherits bash {
  include '::bash::profiles::defaults'
  include '::bash::profiles::prompt'
}
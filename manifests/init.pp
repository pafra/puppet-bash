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
class bash {
  include bash::params
  include bash::install
  include bash::profiles
}

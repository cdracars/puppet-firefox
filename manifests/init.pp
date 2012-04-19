class firefox::install {
    case $::operatingsystem {
        'centos': {
            package {
                'firefox':
                ensure => installed,
                require => Class['xvfb'];
            }
        }
        'debian': {
            package {
                'iceweasel':
                ensure => installed,
                require => Class['xvfb'];
            }
        }
        default: { fail("No such operatingsystem: ${::operatingsystem} yet defined") }
    }
}

class firefox {
  include firefox::install
}

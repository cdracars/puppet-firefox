class iceweasel::install {
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

class iceweasel {
  include iceweasel::install
}

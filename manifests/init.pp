class iceweasel::install {
  package {
    'iceweasel':
      ensure => installed,
      require => Class['xvfb'];
  }
}

class iceweasel {
  include iceweasel::install
}

class sudo {
  package {
    "sudo": ensure => latest;
  }

  file {
    "/etc/sudoers":
      owner => root,
      mode => 440,
      require => Package["sudo"],
      source => "puppet:///sudoers";
  }
}

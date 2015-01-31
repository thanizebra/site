Exec {
  path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
}

package {
  "apache2":
    ensure => present
}

service {
  "apache2":
    ensure => true,
    enable => true
}


file { '/etc/apache2/apache2.conf':
  ensure => file,
  owner => root,
  group => root,
  mode  => 644,
  source => '/repo/modules/apache2/files/apache2.conf'
}




# Class: 
#
#
class tomcat::service {
    # resources

$pack_name = $facts['os']['family'] ? {

 'RedHat' = 'tomcat'
 'Debian' = 'tomcat7'

}
service { $pack_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    # pattern    => $pack_name,
}
}

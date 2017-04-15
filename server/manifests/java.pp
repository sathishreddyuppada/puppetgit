# Class: 
#
#
class server::java { 
    $java_name = 'jdk6',
    $java_version = '6',
    $java_see = 'jdk'
}

    
 java::oracle { $java_name :
   ensure  => 'present',
   version => $java_version,
   java_se => $java_see ,
}
    # resources

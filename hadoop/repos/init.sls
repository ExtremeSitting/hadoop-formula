HDP-1.x:
  pkgrepo.managed:
    - humanname: Hortonworks Data Platform Version - HDP-1.x
    - baseurl: http://public-repo-1.hortonworks.com/HDP/centos6/1.x/GA
    - gpgcheck: 0
    - gpgkey: http://public-repo-1.hortonworks.com/HDP/centos6/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 1
    - priority: 1

HDP-UTILS-1.1.0.16:
  pkgrepo.managed:
    - humanname: Hortonworks Data Platform Utils Version - HDP-UTILS-1.1.0.16
    - baseurl: http://public-repo-1.hortonworks.com/HDP-UTILS-1.1.0.16/repos/centos6
    - gpgcheck: 0
    - gpgkey: http://public-repo-1.hortonworks.com/HDP/centos5/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 1
    - priority: 1

Updates-HDP-1.x:
  pkgrepo.managed:
    - humanname: HDP-1.x - Updates
    - baseurl: http://public-repo-1.hortonworks.com/HDP/centos6/1.x/updates
    - gpgcheck: 0
    - gpgkey: http://public-repo-1.hortonworks.com/HDP/centos6/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins
    - enabled: 1
    - priority: 1

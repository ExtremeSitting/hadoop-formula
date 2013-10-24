include:
  - hadoop-formula.hadoop.repos

openssl:
  pkg.installed:
    - order: 1

snappy:
  pkg.installed:
    - order: 2

snappy-devel:
  pkg.installed:
    - order: 3

lzo:
  pkg.installed:
   - order: 4

lzo-devel:
  pkg.installed:
    - order: 5

HDP:
  pkg.installed:
    - pkgs:
      - hadoop
      - hadoop-sbin
      - hadoop-libhdfs
      - hadoop-native
      - hadoop-pipes
    - order: 6
#      - openssl
#      - snappy
#      - snappy-devel
#      - lzo
#      - lzo-devel

/usr/lib/hadoop/lib/native/Linux-amd64-64/libsnappy.so:
  file.symlink:
    - target: /usr/lib64/libsnappy.so
    - order: last

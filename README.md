DaemonLogger Test
=================

execute:

    $ cd /path/to/daemon_logger_test
    $ bundle
    $ bundle exec bin/daemon_logger_test

see `log` directory:

    hoshi|21:16:22|/home/hoshi/work/daemon_logger_test|
    $ ls -lh log
    toal 24K
    -rw-r--r-- 1 hoshi hoshi  350 Apr 21 21:16 server.log
    -rw-r--r-- 1 hoshi hoshi  350 Apr 21 21:16 server.log.0
    -rw-r--r-- 1 hoshi hoshi  420 Apr 21 21:16 server.log.1
    -rw-r--r-- 1 hoshi hoshi 1.1K Apr 21 21:16 server.log.2
    -rw-r--r-- 1 hoshi hoshi 1.1K Apr 21 21:16 server.log.3
    -rw-r--r-- 1 hoshi hoshi 1.1K Apr 21 21:16 server.log.4
    hoshi|21:16:23|/home/hoshi/work/daemon_logger_test|
    $ ls -lh log
    total 24K
    -rw-r--r-- 1 hoshi hoshi  700 Apr 21 21:16 server.log
    -rw-r--r-- 1 hoshi hoshi  700 Apr 21 21:16 server.log.0
    -rw-r--r-- 1 hoshi hoshi  770 Apr 21 21:16 server.log.1
    -rw-r--r-- 1 hoshi hoshi 1.1K Apr 21 21:16 server.log.2
    -rw-r--r-- 1 hoshi hoshi 1.1K Apr 21 21:16 server.log.3
    -rw-r--r-- 1 hoshi hoshi 1.1K Apr 21 21:16 server.log.4

Log-file size will increase in parallel after the first log rotation.

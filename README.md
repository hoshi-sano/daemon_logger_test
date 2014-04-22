DaemonLogger Test
=================

use serverengine v1.5.7 before https://github.com/frsyuki/serverengine/commit/20500ca7ec5f0cbeae5ca83bf2df6641e531e1c8

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

    $ cat log/server.log.0
    I, [2014-04-21T21:17:12.660271 #27213]  INFO -- : this is worker_id:2
    I, [2014-04-21T21:17:12.761174 #27213]  INFO -- : this is worker_id:2

    $ cat log/server.log.1
    I, [2014-04-21T21:17:12.559799 #27210]  INFO -- : this is worker_id:1
    I, [2014-04-21T21:17:12.660725 #27210]  INFO -- : this is worker_id:1
    I, [2014-04-21T21:17:12.761091 #27210]  INFO -- : this is worker_id:1

    $ cat log/server.log.2
    I, [2014-04-21T21:17:12.548074 #27206]  INFO -- : this is worker_id:0
    I, [2014-04-21T21:17:12.649161 #27206]  INFO -- : this is worker_id:0
    I, [2014-04-21T21:17:12.749521 #27206]  INFO -- : this is worker_id:0
    I, [2014-04-21T21:17:12.849869 #27206]  INFO -- : this is worker_id:0

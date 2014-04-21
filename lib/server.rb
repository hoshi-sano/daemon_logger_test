require "serverengine"
require_relative "worker"

module DaemonLoggerTest
  module Server
    def self.run(options={})
      opts = {
        :daemonize => true,
        :daemon_process_name => 'daemon_logger_test:daemon',
        :server_process_name => 'daemon_logger_test:server',
        :worker_process_name => 'daemon_logger_test:worker %s',
        :worker_type => "process",
        :workers => 4,
        :log => "log/server.log",
        :pid_path => "tmp/server.pid",
        :log_rotate_size => 1*1024,
      }.merge(options)
      ServerEngine.create(Server, Worker) { opts }.run
    end
  end
end

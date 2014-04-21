module DaemonLoggerTest
  module Worker
    def run
      until @stop
        @logger.info "this is worker_id:#{@worker_id}"
        sleep 0.1
      end
    end

    def stop
      @stop = true
    end
  end
end

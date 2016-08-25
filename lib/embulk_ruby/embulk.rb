require 'systemu'
module EmbulkRuby
  class Embulk
    extend EmbulkRuby
    class << self
      def exec command: "run", config: nil, bundler: nil
        bundler  = (bundler.nil? ?  "" : "-b #{bundler}")
        embulk = "#{path} #{command} #{config.to_s} #{bundler}"
        Bundler.with_clean_env do
          status, stdout, stderr = systemu embulk
          [status, stdout, stderr]
        end
      end
    end    
  end
end

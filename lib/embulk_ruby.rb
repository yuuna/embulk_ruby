require "embulk_ruby/version"
require "embulk_ruby/embulk"

module EmbulkRuby
  # Your code goes here...
  attr_accessor :embulk_path, :bundler
  def path
    @embulk_path ||= ( @embulk_path.nil?  ? `which embulk`.chomp  : @embulk_path)
  end

  
  
end

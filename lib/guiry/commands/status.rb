module Guiry
  module Commands
    class Status < Guiry::Cmd
      def initialize(options)
        @options = options
      end

      def execute
        TTY::Command.new("git status")
      end
    end
  end
end
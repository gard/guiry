module Guiry
  module Commands
    class Status < Guiry::Cmd
      def initialize(options)
        @options = options
      end

      def execute
        require 'tty-command'
        cmd = TTY::Command.new()
        result = cmd.run('git status')
        result.each do  |line|
          puts line
        end
      end
    end
  end
end
# encoding: utf-8
# frozen_string_literal: true

require 'thor'
require_relative 'cmd'

module Guiry
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'guiry version'
    def version
      require_relative 'version'
      puts "v#{Guiry::VERSION}"
    end

    desc 'status', 'guiry status'
    def status
      require_relative 'commands/status'
      Guiry::Commands::Status.new(options).execute
    end

    map %w(--version -v) => :version
    map %w(status) => :status
  end
end

# encoding: utf-8
# frozen_string_literal: true

require 'thor'

module Guiry
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'guiry version'
    def version
      require_relative 'version'
      puts "v#{Guiry::VERSION}"
    end
    map %w(--version -v) => :version
  end
end

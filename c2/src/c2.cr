require "./c2/*"
require "./init"

require "logger"

module C2
  VERSION = "0.1.0"

  APPLICATION_NAME = "evih c2"
  APPLICATION_DESC = "A C2 system for evih implant."

  Log = ::Logger.new(STDOUT, Logger::DEBUG)
  Log.progname = APPLICATION_NAME
  Log.info("#{APPLICATION_NAME} started!")
end

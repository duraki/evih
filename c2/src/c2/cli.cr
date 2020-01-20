require "commander"

module C2::CLI
  extend self

  def config
    Commander::Command.new do |cmd|
      cmd.use = "c2"
      cmd.long = APPLICATION_DESC

      cmd.commands.add do |cmd|
        cmd.use = "listen"
        cmd.short = "Listen for incomming connection to establish beacon"
        cmd.long = cmd.short
        cmd.run do |options, arguments|
          pp arguments
        end
      end
    end
  end

  def run(argv)
    Commander.run(config, argv)
  end
end

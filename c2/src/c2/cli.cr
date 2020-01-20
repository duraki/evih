require "commander"

module C2::CLI
  extend self

  def config
    Commander::Command.new do |cmd|
      cmd.use = "c2"
      cmd.long = APPLICATION_DESC

      cmd.run do |options, arguments|
        puts cmd.help # => Render help screen
      end

      # Listen for incomming session for beacon digest storage
      # Uses REVERSE_SH
      cmd.commands.add do |cmd|
        cmd.use = "listen"

        cmd.short = "Listen for incomming connection to establish beacon"
        cmd.long = cmd.short
        cmd.run do |options, arguments|
          C2::CLI.listen
        end
      end

      # Connect to remote session for beacon digest storage
      # Uses BIND_SH
      cmd.commands.add do |cmd|
        cmd.use = "remote [ip] [port]"

        cmd.short = "Connect to remote connection to establish beacon"
        cmd.long = cmd.short
        cmd.run do |options, arguments|
          pp arguments
        end
      end

      # Show available beacon sessions from storage
      cmd.commands.add do |cmd|
        cmd.use = "show"

        cmd.short = "Show available beacon sessions from storage file"
        cmd.long = cmd.short
        cmd.run do |options, arguments|
          pp arguments
        end
      end

      # Initialize shell to beacon digest, run a shell session similar to meterpreter
      cmd.commands.add do |cmd|
        cmd.use = "init [beacon]"

        cmd.short = "Initialize a shell daemon to beacon session"
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

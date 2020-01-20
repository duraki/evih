module C2
  module Socket
    class Tcp
      getter addr : String
      getter port : Int32

      def initialize(@addr = "", @port = 1338)
      end

      def open(@port)
        TCPServer.new(port: @port)
      end

      def establish(@addr, @port)
        TCPSocket.new(host: @addr, port: @port)
      end
    end
  end
end

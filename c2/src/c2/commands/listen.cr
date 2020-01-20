module C2::CLI
  def listen
    sock_h = C2::Socket::Tcp.new
    sock_h = sock_h.open(1338)
    pp sock_h

    loop do
      if socket = sock_h.accept?
        spawn handle_incomming(socket)
      else
        break
      end
    end
  end

  # for outbounded/binded socket sessions
  # def handle_client(client)
  #   message = client.gets
  #   client.puts message
  # end

  # for incoming/revrse socket sessions
  def handle_incomming(socket)
    pp socket
    loop do
      message = socket.gets
      pp message
    end
  end
end

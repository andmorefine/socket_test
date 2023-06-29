require 'socket'

Socket.tcp_server_loop(1234) do |socket, client_addrinfo|
  Thread.new do
    begin
      while message = socket.gets
        puts "Received: #{message}" #受信したデータを表示
        socket.puts "Received!" # クライアントにレスポンスを返す
      end
    ensure
      socket.close # 必ずソケットを閉じる
    end
  end
end

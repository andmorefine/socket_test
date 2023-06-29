require 'socket'

# host = 'localhost'、port = 1234 で新しくTCP接続を開きます
Socket.tcp('localhost', 1234) do |socket|
  socket.puts "Hello, Server!" # サーバにメッセージを送信します

  while message = socket.gets
    puts message # サーバからのレスポンスを表示します
  end

  socket.close
end

require 'socket'

# UNIXドメインソケットの作成
server = UNIXServer.new('./myapp.sock')

loop do
  socket = server.accept

  while message = socket.gets
    puts message # 受け取ったメッセージを表示
  end

  socket.close
end

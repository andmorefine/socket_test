require 'socket'

# UNIXドメインソケットへの接続
socket = UNIXSocket.new('./myapp.sock')

while line = $stdin.gets
  socket.puts line # ソケットに入力文字列を渡す
  socket.flush

  # サーバから返却された文字列を出力
  puts socket.gets
end

# ソケット CLOSE
socket.close

require 'webrick'

server = WEBrick::HTTPServer.new :Port => 3000, :DocumentRoot => 'public_html'
trap 'INT' do server.shutdown end

server.start

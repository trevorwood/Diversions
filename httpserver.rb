#http server using webrick
#WEBrick documentation at http://www.ruby-doc.org/stdlib/libdoc/webrick/rdoc/index.html.

require 'webrick'

#describes the directory the server will host files from
#a test file 'index.htm' is located in the Diversions repo
#to make this work locally, change the path '~/public_html'
root = File.expand_path '~/public_html'

server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root

trap 'INT' do server.shutdown end

server.start

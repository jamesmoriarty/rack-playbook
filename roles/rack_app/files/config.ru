require 'bundler/setup'
Bundler.require(:default)

app = proc do |env|
  [200, { 'Content-Type' => 'text/plain' }, ["[#{Process.pid}] Hello World"]]
end

run app

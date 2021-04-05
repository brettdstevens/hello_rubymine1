require "hello_rubymine/version"

module HelloRubymine
  class Error < StandardError; end
  require "hello_rubymine/version"

  module HelloRubymine
    def self.greet(name)
      puts "Hello, #{name}! I'm Ruby!"
    end
  end

end

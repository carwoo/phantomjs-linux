require "phantomjs-linux/version"

module Phantomjs
  def self.executable_path(proxy_type = "socks5", proxy_address = "81.0.240.113:9050")
  	if proxy_type && proxy_address
  		"#{Linux.full_path} --proxy-type=#{proxy_type} --proxy=#{proxy_address}"
  	else
  		Linux.full_path
  	end
  end

  module Linux
    def self.full_path
      File.join(File.dirname(__FILE__), '..', 'vendor', 'phantomjs', 'linux', 'bin', 'phantomjs')
    end
  end
end
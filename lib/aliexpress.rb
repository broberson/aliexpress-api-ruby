require 'rest-client'
require 'json'
require 'addressable'
require 'oauth2'

module AliExpress
  class << self
    attr_accessor :protocol, :host, :base_uri
    attr_accessor :client_id, :client_secret, :access_token, :refresh_token
    attr_accessor :currency, :language
    attr_accessor :logger

    def protocol
      @protocol || 'https'
    end

    def host
      @host || 'gw.api.alibaba.com'
    end

    def base_uri
      @base_uri || "#{protocol}://#{host}/openapi"
    end

    def currency
      @currency || 'USD'
    end

    def language
      @language || 'en'
    end

    def logger
      @logger ||= Logger.new('/dev/null')
      @logger
    end
  end
end

require File.dirname(__FILE__) + '/aliexpress/base'
require File.dirname(__FILE__) + '/aliexpress/auth'
require File.dirname(__FILE__) + '/aliexpress/product'
require File.dirname(__FILE__) + '/aliexpress/affiliate'

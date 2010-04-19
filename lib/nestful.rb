require "net/http"
require "uri"
require "tempfile"

require "active_support/core_ext/object/to_param"
require "active_support/core_ext/object/to_query"
require "active_support/inflector"

$:.unshift(File.dirname(__FILE__))

require "nestful/exceptions"
require "nestful/formats"
require "nestful/connection"
require "nestful/request"
require "nestful/resource"

module Nestful
  extend self

  def get(url, options = {})
    Request.new(url, options.merge(:method => :get)).execute
  end
    
  def post(url, options = {})
    Request.new(url, options.merge(:method => :post)).execute
  end
  
  def put(url, options = {})
    Request.new(url, options.merge(:method => :put)).execute
  end
  
  def delete(url, options = {})
    Request.new(url, options.merge(:method => :delete)).execute
  end
end
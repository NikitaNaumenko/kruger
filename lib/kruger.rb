require 'kruger/version'
require 'httparty'
require 'kruger/client'

module Kruger
  class Error < StandardError; end
  # Your code goes here...
  def perform_request(_path)
    url = "https://api.moikrug.ru/v1/integrations/#{path}?access_token=#{@access_token}"
    response = HTTParty.get(url)
    JSON.parse(response)
  end
end

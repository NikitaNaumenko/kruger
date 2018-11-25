# frozen_string_literal: true

require './lib/kruger/client/vacancies'
require './lib/kruger/client/users'
require './lib/kruger/client/request'
require './lib/kruger/client/response'
require './lib/kruger/client/skills'

module Kruger
  class Client
    MOI_KRUG_API_URL = 'https://api.moikrug.ru/v1/integrations'.freeze

    include HTTParty
    include Kruger::Client::Vacancies
    include Kruger::Client::Users
    include Kruger::Client::Skills
    include Kruger::Client::Request
    base_uri MOI_KRUG_API_URL
    format :json

    def initialize(access_token:)
      @access_token = access_token || ENV['MOI_KRUG_ACCESS_TOKEN']
    end
  end
end

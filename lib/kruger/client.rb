# frozen_string_literal: true

require '/kruger/client/vacancies'
require 'kruger/client/users'
require 'kruger/client/request'
require 'kruger/client/response'
require 'kruger/client/skills'
require 'kruger/client/cities'
require 'kruger/client/companies'
require 'kruger/client/divisions'

module Kruger
  class Client
    MOI_KRUG_API_URL = 'https://api.moikrug.ru/v1/integrations'.freeze

    include HTTParty
    include Kruger::Client::Vacancies
    include Kruger::Client::Users
    include Kruger::Client::Skills
    include Kruger::Client::Request
    include Kruger::Client::Divisions
    include Kruger::Client::Companies
    include Kruger::Client::Cities

    base_uri MOI_KRUG_API_URL
    format :json

    def initialize(access_token:)
      @access_token = access_token || ENV['MOI_KRUG_ACCESS_TOKEN']
    end
  end
end

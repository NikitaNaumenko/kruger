# frozen_string_literal: true

require './lib/kruger/client/vacancies'

module Kruger
  class Client
    include HTTParty
    include Kruger::Client::Vacancies
    base_uri 'https://api.moikrug.ru/v1/integrations'
    format :json

    def initialize(access_token:)
      @access_token = access_token || ENV['MOI_KRUG_ACCESS_TOKEN']
    end
  end
end

# frozen_string_literal: true

module Kruger
  class Client
    def initialize(access_token:)
      @access_token = access_token || ENV['MOI_KRUG_ACCESS_TOKEN']
    end
  end
end

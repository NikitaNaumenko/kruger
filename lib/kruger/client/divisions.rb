# frozen_string_literal: true

module Kruger
  class Client
    module Divisions
      def divisions
        get('/divisions', access_token: @access_token)
      end
    end
  end
end

# frozen_string_literal: true

module Kruger
  class Client
    module Cities
      def cities
        get('/cities', access_token: @access_token)
      end
    end
  end
end

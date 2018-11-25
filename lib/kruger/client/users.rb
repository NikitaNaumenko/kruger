# frozen_string_literal: true

module Kruger
  class Client
    module Users
      def me
        get('/users/me', access_token: @access_token)
      end
    end
  end
end

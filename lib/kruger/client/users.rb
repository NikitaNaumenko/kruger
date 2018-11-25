# frozen_string_literal: true

module Kruger
  class Client
    module Users
      def whoami
        get('/users/me', access_token: @access_token)
      end

      def user(login:)
        get("/users/#{login}", access_token: @access_token)
      end
    end
  end
end

# frozen_string_literal: true

module Kruger
  class Client
    module Companies
      def companies
        get('/companies/my', access_token: @access_token)
      end
    end
  end
end

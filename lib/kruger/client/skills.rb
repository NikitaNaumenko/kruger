# frozen_string_literal: true

module Kruger
  class Client
    module Skills
      def skills
        get('/skills', access_token: @access_token)
      end
    end
  end
end

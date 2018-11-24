# frozen_string_literal: true

module Kruger
  class Client
    module Vacancies
      def vacancies
        response = self.class.get('/vacancies', query: { access_token: @access_token })
        response.parsed_response['vacancies']
      end
    end
  end
end

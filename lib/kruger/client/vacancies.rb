# frozen_string_literal: true

module Kruger
  class Client
    module Vacancies
      def vacancies
        get('/vacancies', query: { access_token: @access_token })
      end

      def responses(vacancy_id:)
        get("vacancies/#{vacancy_id}/responses", query: { access_token: @access_token })
      end
    end
  end
end

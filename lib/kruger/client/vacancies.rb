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

      def create_vacancy(options:)
        post('/vacancies', options.merge(query: { access_token: @access_token }))
      end

      def update_vacancy(vacancy_id:, options:)
        patch("vacancies/#{vacancy_id}", options.merge(query: { access_token: @access_token }))
      end

      def publish_vacancy(vacancy_id:)
        put("vacancies/#{vacancy_id}/pay", query: { access_token: @access_token })
      end

      def hide_vacancy(vacancy_id:)
        put("vacancies/#{vacancy_id}/toggle_published_state", query: { access_token: @access_token })
      end
    end
  end
end

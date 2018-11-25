# frozen_string_literal: true

module Kruger
  class Client
    class Response
      attr_reader :response

      def initialize(response = nil)
        @response = response
      end

      def body
        response.parsed_response
      end

      def success?
        response.success?
      end

      def status
        response.code
      end
    end
  end
end

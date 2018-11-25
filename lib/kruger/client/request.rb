# frozen_string_literal

module Kruger
  class Client
    module Request
      # Make a HTTP get request
      #
      # @param url [String] The path, relative to {#api_endpoint}
      # @param options [Hash] Query and header params for request
      # @return [Kruger::Client::Response]
      def get(url, options = {})
        request :get, url, options
      end

      # Make a HTTP post request
      #
      # @param url [String] The path, relative to {#api_endpoint}
      # @param options [Hash] Body and header params for request
      # @return [Kruger::Client::Response]
      def post(url, options = {})
        request :post, url, options
      end

      # Make a HTTP PUT request
      #
      # @param url [String] The path, relative to {#api_endpoint}
      # @param options [Hash] Body and header params for request
      # @return [Kruger::Client::Response]
      def put(url, options = {})
        request :put, url, options
      end

      # Make a HTTP PATCH request
      #
      # @param url [String] The path, relative to {#api_endpoint}
      # @param options [Hash] Body and header params for request
      # @return [Kruger::Client::Response]
      def patch(url, options = {})
        request :patch, url, options
      end

      private

      def request(method, path, options = {})
        response = self.class.send(method, path, body: options)
        Response.new(response)
      end
    end
  end
end

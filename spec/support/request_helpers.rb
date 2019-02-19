module Request
  module JsonHelpers
    def json_response
      @json_response ||= JSON.parse(response.body, symbolize_name: true)
    end
  end

  module HeadersHelpers
    def api_authorization_header(token)
      request.headers['Authoriziation'] = token
    end
  end
end

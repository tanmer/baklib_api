module BaklibApi
  class Client
    attr_reader :token, :host, :request
    def initialize(token, host)
      @token = token
      @host = host
      @request = request
    end

    def request
      @client ||= Faraday.new(url: Config.host) do |conn|
        conn.headers['Authorization'] = "Bearer #{Config.token}"
        conn.headers['Content-Type'] = 'application/json'
        conn.headers['User-Agent'] = 'Baklib API Client'
        conn.adapter :net_http
      end
    end

    def self.request(path, request_method = 'get', **params)
      if ['delete', 'get'].include?(request_method.to_s)
        json = params.empty? ? nil : params
      else
        json = params.empty? ? nil : params.to_json
      end
      client = Client.new(Config.token, Config.host)
      response = client.request.send(request_method.downcase, path, json)
      JSON.parse(response.body)
    end
  end
end

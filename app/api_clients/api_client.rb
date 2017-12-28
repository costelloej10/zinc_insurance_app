module ApiClient

  def get_json(path:)
    curl = Curl::Easy.new(host + path) { |curl| set_headers(curl) }
    curl.perform
    handle_response(curl: curl, expected_code: 200)
  end

  def post_json(path:, payload: {}, expected_code: 201)
    curl = Curl::Easy.new(host + path) { |curl| set_headers(curl) }
    curl.post_body = payload.to_json
    curl.perform
    handle_response(curl: curl, expected_code: expected_code)
  end

  private

  def handle_response(curl: , expected_code:)
    verify_response_code(curl: curl, expected_code: expected_code)
    JSON.parse(curl.body_str)
  end

  def set_headers(curl)
    http_headers.each do |k,v|
      curl.headers[k] = v
    end
  end

  def verify_response_code(curl: , expected_code:)
    unless curl.response_code == expected_code
      err_msg = "Incorrect response code:  #{curl.response_code}. Expected #{expected_code} from #{curl.url}. Message: #{curl.body_str}"
      raise "#{self.class}::#{self.class}Error".constantize, err_msg
    end
  end

end
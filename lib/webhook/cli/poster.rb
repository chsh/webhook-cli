module Webhook
  module CLI
    class Poster
      def self.post(url_string, json_path)
        new.post(url_string, json_path)
      end
      def post(url_string, json_path)
        verify_url(url_string)
        json = detect_json(json_path)
        conn = Faraday.new url: url_string
        params = {
            payload: json
        }
        conn.post nil, params
      end
      private
      def verify_url(url_string)
        begin
          URI.parse(url_string)
        rescue => e
          InvalidURIError.new e.message
        end
      end
      def detect_json(json_path)
        case json_path
        when String
          if File.exist? json_path
            c = File.read(json_path)
            verify_json_content c
            c
          elsif json_content?(json_path)
            json_path
          else
            raise InvalidJSONPathError.new "'#{json_path}' is not file nor valid json."
          end
        when Hash
          json_path.to_json
        end
      end
      def verify_json_content(json)
        JSON.parse(json)
      end
    end
  end
end

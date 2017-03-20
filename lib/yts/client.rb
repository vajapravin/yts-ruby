module YTS
	module Client
		include HTTParty

		base_uri 'https://yts.ag/api/v2'
    format :json

    def self.convert_query_to_url(params)
      params.map do |k,v|
        "&#{k}=#{v}"
      end.join
    end

    def self.make_request(klass, endpoint, format, params = {}, method = 'get')
      result = if method == 'get'
        query_url = convert_query_to_url(params)
        get("#{endpoint}.#{format}?#{query_url}")
      else
        post("#{endpoint}.#{format}", params)
      end
      parsed_result = JSON.parse(result.body) if format.downcase.eql?('json') || format.downcase.eql?('jsonp')
      parsed_result = Nokogiri::XML(result.body) if format.downcase.eql?('xml')
      parsed_result
    end

    class << self
      def make_magnet(hash, encode_url)
        magnets = ['udp://glotorrents.pw:6969/announce', 'udp://tracker.opentrackr.org:1337/announce', 'udp://torrent.gresille.org:80/announce', 'udp://tracker.openbittorrent.com:80', 'udp://tracker.coppersurfer.tk:6969', 'udp://tracker.leechers-paradise.org:6969', 'udp://p4p.arenabg.ch:1337', 'udp://tracker.internetwarriors.net:1337', 'udp://open.demonii.com:1337/announce', 'udp://p4p.arenabg.com:1337'].map{|t| "tr=#{t}"}.join('&')
        "magnet:?xt=urn:btih:#{hash}&dn=#{encode_url}&#{magnets}"
      end
    end
	end
end

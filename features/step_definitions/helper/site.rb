module Helper
  class Site
    include Capybara::DSL

    def initialize(target)
      @target = target
      @domain = 'nature.com'
    end

    def page_for(path, proof: false)
      if proof
        URI::HTTP.build(host: host, path: path, query: 'proof=true')
      else
        URI::HTTP.build(host: host, path: path)
      end
    end

    def host
      "#{@target}.#{@domain}"
    end

    def current_path
      URI.parse(current_url).path
    end
  end
end

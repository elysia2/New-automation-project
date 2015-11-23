module Helper
  class User
    include Capybara::DSL
    include Capybara::Webkit

    attr_accessor :login, :login_encoded

    def initialize(site, credentials)
      @site          = site
      @login         = nil
      @login_encoded = nil
      @credentials   = credentials
      raise 'Invalid user' unless @credentials
    end

    def use_template(templ, fast: false)
      if fast
        page.driver.header 'X-Proxy-Appended-Data', {'use_mosaic': true }.to_json
      else
        url = @site.page_for("/mosaic_beta/#{action(templ)}")
        visit url
      end
    end

    def logged_in?
      @login && @login_encoded
    end

    def username
      @credentials['username']
    end

    def password
      @credentials['password']
    end

    private

    def action(templ)
      case templ
      when 'Mosaic'  then 'optin'
      when 'Classic' then 'optout'
      else fail 'Invalid template'
      end
    end
  end
end

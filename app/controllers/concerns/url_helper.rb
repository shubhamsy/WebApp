module UrlHelper

  extend ActiveSupport::Concern

  delegate :url_helpers, to: 'Rails.application.routes'

  def url(args)
    url_helpers.send("#{args[:path]}_url", args[:resource], host: "https://localhost.com")
  end


end
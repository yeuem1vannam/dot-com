class DeviseHTTP < ::Devise::Mailer
  MAILGUN_API = "https://api:%s@api.mailgun.net/v2/%s/messages" % Rails.application.secrets.mailgun.values_at(:api_key, :domain)

  protected
  def devise_mail(record, action, opts={})
    initialize_from_record(record)
    rest_client_mail(headers_for(action, opts))
  end

  def rest_client_mail(headers)
    data = headers.slice(:to, :subject)
    data[:from] = "Phuong 'J' Le H.#{Rails.env.development? ? '<dev>' : ''} <me@yeuem1vannam.com>"
    data[:html] = "<html>%s</html>" % render("#{headers.fetch(:template_path).last}/#{headers.fetch(:template_name)}")
    RestClient.post( MAILGUN_API, data)
  end
end

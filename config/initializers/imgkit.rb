IMGKit.configure do |config|
  config.wkhtmltoimage = Gem.bin_path('wkhtmltopdf-heroku', 'wkhtmltopdf-linux-amd64') if ENV['RACK_ENV'] == 'production'
end

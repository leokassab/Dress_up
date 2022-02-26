IMGKit.configure do |config|
  config.wkhtmltoimage = Gem.bin_path('wkhtmltopdf-heroku', 'wkhtmltopdf-linux-amd64')
end

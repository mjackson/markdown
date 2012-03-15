require 'sinatra'
require 'rdiscount'

VALID_OPTIONS = [
  :smart,
  :filter_styles,
  :filter_html,
  :fold_lines,
  :generate_toc,
  :no_image,
  :no_links,
  :no_tables,
  :strict,
  :autolink,
  :safelink,
  :no_pseudo_protocols
]

get '/' do
  text = File.read('README.md')
  markdown = RDiscount.new(text, :smart)
  body = markdown.to_html
  erb :home, :layout => false, :locals => {:body => body}
end

post '/' do
  text = params[:text] or halt 403
  text = text[:tempfile].read if Hash === text
  options = VALID_OPTIONS.select {|name| params[name] == '1' }

  puts text.inspect
  puts options.inspect

  markdown = RDiscount.new(text, *options)

  content_type 'text/html'
  markdown.to_html
end

__END__

@@ home
<!DOCTYPE html>
<html>
  <head>
    <title>Markdown as a Service</title>
    <style type="text/css">
    body {font: 14px Helvetica, sans-serif;}
    #wrapper {width: 600px; margin: 0 auto;}
    </style>
  </head>
  <body>
    <div id="wrapper">
    <%= body %>
    </div>
  </body>
</html>

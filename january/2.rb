require 'rspec'



def html_generator title
  # #Jordan's solution
  # <<~HTML
  #   <!doctype html>
  #
  #   <html lang="en">
  #   <head>
  #     <meta charset="utf-8">
  #
  #     <title>#{title}</title>
  #   </head>
  #
  #   <body>
  #   </body>
  #   </html>
  # HTML

  str ="<!doctype html>\n<html lang=\"en\">\n<head>\n\t<meta charset=\"utf-8\">\n\n\t<title>#{title}</title>\n</head>\n\n<body>\n</body>\n</html>"
end

describe 'HTML generator' do
  it 'allows for a dynamic title' do
    expect(html_generator 'My Site').to match(/My Site/)
  end
end

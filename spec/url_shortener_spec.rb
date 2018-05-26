require 'url_shortener'
require 'rack/test'

RSpec.describe URLShortener do
  include Rack::Test::Methods

  def app
    URLShortener.new
  end

  it 'renders the homepage' do
    response = get '/'

    puts response.methods.scan('body')

    expect(response.status).to eq(200)
  end
end

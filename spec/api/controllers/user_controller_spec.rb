RSpec.describe 'AcebookLegacy Api' do
  include Rack::Test::Methods

  def app
    AcebookLegacy
  end

  before do
    User.create(name: 'test', email: 'test@test.com', password: 'secret')
  end

  describe 'get users' do

    it "returns users" do
      get '/api/users'

      expect(last_response).to be_ok

      parsed = JSON.parse(last_response.body).first

      expect(parsed['name']).to eq('test')
      expect(parsed['email']).to eq('test@test.com')
      expect(parsed['password']).to eq('secret')
    end

  end
end

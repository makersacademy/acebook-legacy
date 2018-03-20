class AcebookLegacy < Sinatra::Base
  namespace '/api' do

    get '/users' do
      User.all.to_json
    end

  end
end

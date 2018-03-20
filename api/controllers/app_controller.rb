class AcebookLegacy < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  register Sinatra::Namespace

  configure :development do
    register Sinatra::Reloader
  end
end

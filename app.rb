require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #adds the ability to reference the TextAnalyzer class and invokes its "new" method

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    @analyzed_text = TextAnalyzer.new(text_from_user)

    erb :results
    #takes the data from params[:user_text] and feeds it into a new instance of the TextAnalyzer class
    #we now have the instance of TextAnalyzer saved to an instance var called '@analyzed_text"
  end
end

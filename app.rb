require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  get '/new' do 
    erb :create_puppy
  end
  
  post '/puppy' do
    @new_puppy = Puppy.new(params[:name], params[:breed], params[:age])
    @name = @new_puppy.name
    @breed = @new_puppy.breed
    @age = @new_puppy.age
    
    erb :display_puppy
  end

end

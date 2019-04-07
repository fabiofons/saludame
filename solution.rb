require "sinatra"

get '/' do
    unless params[:nombre]
        "<h1>Hola desconocido!</h1>"
    else 
        if params[:nombre] == ""
            "<h1>Hola desconocido!</h1>"
        else
            "<h1>Hola #{params[:nombre].capitalize}!</h1>"
        end
    end
    erb :index
end

get '/makers/:nombre' do 
    "<h1>Hola #{params[:nombre].capitalize}!</h1>"
end

post '/greet' do
    "<h1>¡Hola #{params[:nombre]}!</h1>"
end
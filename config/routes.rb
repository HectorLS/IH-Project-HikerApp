Rails.application.routes.draw do
  
  scope "(:locale)" do
    get '/aboutus'  ,   to: 'site#aboutus'
    get '/contact'  ,   to: 'site#contact'
    get '/services' ,   to: 'site#services'
    # EL root tiene que ser el último porque sino locale me cogerá la url del index
    # y la liará parda
    resources :routes do
        resources :layers
    end
    resources :markers
    resources :trails
    get '/'         , to: 'site#home', as: 'root'
    post '/search'  , to: 'routes#search'
  end

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'clima', to: 'weathers#clima'
  get 'sequia', to: 'weathers#sequia'
  get 'optimo', to: 'weathers#optimo'
  get 'lluvia', to: 'weathers#lluvia'
end

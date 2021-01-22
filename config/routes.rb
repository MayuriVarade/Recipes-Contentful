Rails.application.routes.draw do
	root to: "recipe#index"  
  get '/recipe/:id', to: 'recipe#show', as: 'recipe_show'
end

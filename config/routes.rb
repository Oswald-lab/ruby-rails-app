Rails.application.routes.draw do
  get "health", to: "health#show"
  resources :notes, only: %i[index show create update destroy]
end

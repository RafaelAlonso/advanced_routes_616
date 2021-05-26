Rails.application.routes.draw do
  # se vou fazer algo referente aos restaurantes, coloco dentro do "do ... end" do resources :restaurants
  resources :restaurants do
    # Vou fazer algo referente a VARIOS restaurantes ou referente a UM restaurante?
    # - fazer para vários => COLLECTION
    collection do
      get :top
    end

    # - fazer para um:
    # - Vou fazer algo para UM restaurante ou vou fazer algo para um modelo relacionado ao restaurante?
    # -- fazer para a review => MEMBER
    member do
      get :chef
    end

    # -- fazer para modelo relacionado => RESOURCES
    resources :reviews, only: [:new, :create]
  end
  
  # quero deletar reviews => destroy (V)
  resources :reviews, only: [:destroy]
end

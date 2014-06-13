Rails.application.routes.draw do

  root 'punch_cards#index'
  resource :punch_card

end

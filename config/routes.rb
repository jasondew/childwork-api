Rails.application.routes.draw do
  resources :chores
  resources :completed_chores, only: %i{index create destroy}
  resources :payments, only: %i{index create destroy}

  post "pay-out" => "pay_outs#create"
end

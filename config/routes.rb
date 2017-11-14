Rails.application.routes.draw do




  namespace :api do
    namespace :v1 do
      resource :country do
      end
      resource :user do
        post 'authenticate'
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #-------------------------------------------------------------------------#
  #                              Authentication                             #
  #-------------------------------------------------------------------------#


  get "main/index"
  root :to => 'main#index'

end

Rails.application.routes.draw do

  #home routes for ajax calls
	get 'home/update_zips' => 'home#update_zips'
	get 'home/update_state' => 'home#update_state'
	get 'home/addspouse' => 'home#addspouse'
	get 'home/adddependent' => 'home#adddependent'
	get 'home/index'
  root :to => 'home#index'
  get 'plans/quickscreen' => 'plans#quickscreen'
	get 'home/update_zip' => 'home#update_zip'
  
  
  resources :bencostshares
	resources :businessrules
	resources :crosswalks
	resources :networks
	resources :plans
	resources :qualities
	resources :rates
	resources :serviceareas
	resources :transparencies
	resources :home
  resources :countyfips
	
	#Getters for table views
	get 'crosswalks/index'
	get 'crosswalks/edit'
	get 'crosswalks/new'
	get 'crosswalks/show'
	get 'qualities/index'
	get 'qualities/edit'
	get 'qualities/new'
	get 'qualities/show'
	get 'businessrules/index'
	get 'businessrules/edit'
	get 'businessrules/new'
	get 'businessrules/show'
	get 'rates/index'
	get 'rates/edit'
	get 'rates/new'
	get 'rates/show'
	get 'bencostshares/index'
	get 'bencostshares/edit'
	get 'bencostshares/new'
	get 'bencostshares/show'
	get 'serviceareas/index'
	get 'serviceareas/edit'
	get 'serviceareas/new'
	get 'serviceareas/show'
	get 'networks/index'
	get 'networks/edit'
	get 'networks/new'
	get 'networks/show'
	get 'transparencies/index'
	get 'transparencies/edit'
	get 'transparencies/new'
	get 'transparencies/show'
	get 'plans/index'
	get 'plans/edit'
	get 'plans/new'
	get 'plans/show'
  
	
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

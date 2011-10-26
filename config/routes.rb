WellrailedI18nDemo::Application.routes.draw do
  get "home/base"
  get "home/step1"
  get "home/step2"
  root :to => 'home#base'
end

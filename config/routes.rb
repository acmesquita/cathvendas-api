Rails.application.routes.draw do

    get  '/companies'                                          ,to: 'companies#index'
    post '/companies'                                          ,to: 'companies#create'
    get  '/companies/:companies_id/cashes/:id'                 ,to: 'cashes#show'
    post '/companies/:companies_id/cashes/:id/registries'      ,to: 'cashes#create'
end

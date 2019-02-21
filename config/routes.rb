Rails.application.routes.draw do
  get "/animals/pets" => "pets#index"
end

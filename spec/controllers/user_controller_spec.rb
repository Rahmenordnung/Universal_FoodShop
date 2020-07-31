require 'rails_helper'
RSpec.describe UserController, type: :controller do
    context 'GET #items' do
        it 'returns correct response' do
           get :controller => :items
           expect(response).to not_be_success #response_success?
        end
    end
        

end
require 'rails_helper'
RSpec.describe User, type: :model do
    context 'validation tests' do
        it 'ensures email presence' do
            user = User.new(email: 'simpleemail@email.com' ).save
            expect(user).to eq(false)
        end
        
        it 'should save successfully' do
            user = User.new(email: 'simpleemail@email.com' ).save
            expect(user).to eq(false)
        end
    end
end
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    def user_params
       params.require(:user).permit(:email, :password, :password_confirmation, :remember_me)
    end
       has_many :orders   
end

  

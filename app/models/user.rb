class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_many :answers

         def is_admin?
              self.name == 'admin1'
         end
          
         def username
               n=self.name
         end

  end

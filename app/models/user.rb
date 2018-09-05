class User < ApplicationRecord

  validates :email, {uniqueness: true}
  validates :password,{presence: true}



end

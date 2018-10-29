class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  	attachment :profile_image
  	has_many :favorites
  	has_many :reservations
  	has_many :comments
  	has_many :room_users



 #  	validates :nickname, presence: true
	# validates :email, presence: true
	# validates :name_family_name, presence: true
	# validates :name_name, presence: true
	# validates :furigane_family_name, presence: true
	# validates :fuigana_name_name, presence: true
	# # validates :furigana_family_name, presence: true, format: {
 #                   with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
 #                   message: "全角カタカナのみで入力して下さい"
 #                 }

 #  	validates :furigana_name, presence: true, format: {
 #                   with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
 #                   message: "全角カタカナのみで入力して下さい"
                 # }

  	


    def self.search(search)
	    if search
	      User.where(['email LIKE ?', "%#{search}%"])
	    else
	      User.all
	    end
  	end
end

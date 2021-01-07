class Book < ApplicationRecord
	
	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}

	validates :title,length: { maximum: 50 }
	belongs_to :user
	def self.search(search)
        return Book.all unless search
		return Book.where(['body LIKE ?', "%#{search}%"])
		# User.where(['name LIKE ?', "%#{search}%"])
    end
end

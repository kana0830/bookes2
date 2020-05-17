class Book < ApplicationRecord
    
    belongs_to :user #userモデルと1:多の関係性
    
    validates :title, presence: true
    validates :body, presence: true, length: { maximum: 200 } 
    # validates :user_id, presence: true
    

    
end

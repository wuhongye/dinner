class Check < ActiveRecord

  validates :user_id, presence: { message: "用户不能为空" }
  validates :mealname, presence: { message: "菜名" }
  validates :number, presence: { message: "数量" }
  validates :times, presence: { message: "具体时间" }
  validates :money, presence: { message: "需要支付钱" }
  validates :payer, presence: { message: "付款人" }

  
end

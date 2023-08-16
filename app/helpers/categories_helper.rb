module CategoriesHelper
  def calculate_transaction_count(category)
    Transaction.where(category_id: category.id).count
  end

  def calculate_transaction_amount(category)
    @transactions = Transaction.where(category_id: category.id)
    transaction_amount = 0
    @transactions.each do |transaction|
      transaction_amount += transaction.amount
    end
    transaction_amount
  end

  def calculate_total_budget
    @categories.sum { |category| calculate_transaction_amount(category) }
  end
end

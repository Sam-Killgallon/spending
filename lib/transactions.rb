require 'storage'
require 'lloyds/credit_card'
require 'lloyds/current_account'

class Transactions
  def all
    credit_card + current_account
  end

  def credit_card
    return @credit_card if defined?(@credit_card)
    @credit_card = Storage.new(Lloyds::CreditCard).data
  end

  def current_account
    return @current_account if defined?(@current_account)
    @current_account = Storage.new(Lloyds::CurrentAccount).data
  end
end

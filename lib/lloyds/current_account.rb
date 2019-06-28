module Lloyds
  class CurrentAccount
    def self.name
      :current_account
    end

    def initialize(transaction)
      @transaction = transaction
    end

    def date
      transaction['Transaction Date']
    end

    def description
      transaction['Transaction Description']
    end

    def amount
      value = if debit_amount
                debit_amount.prepend('-')
              elsif credit_amount
                credit_amount
              else
                # This should never happen
                raise 'No transaction value!?'
              end

      value.to_f
    end

    private

    def debit_amount
      transaction['Debit Amount']
    end

    def credit_amount
      transaction['Credit Amount']
    end

    attr_reader :transaction
  end
end

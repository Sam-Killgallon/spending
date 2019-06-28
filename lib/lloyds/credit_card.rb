module Lloyds
  class CreditCard
    def self.name
      :credit_card
    end

    def initialize(transaction)
      @transaction = transaction
    end

    def date
      transaction['Date']
    end

    def description
      transaction['Description']
    end

    def amount
      transaction['Amount'].to_f * -1
    end

    private

    attr_reader :transaction
  end
end

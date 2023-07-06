require "rails_helper"
require "simple_command"

module Product
  describe ProductCommands::ListProductsOutOfStockCommand do
    let!(:product1) { create(:product, available_number: 10, id: 1) }
    let!(:product2) { create(:product, available_number: 0, id: 2) }
    let!(:product3) { create(:product, available_number: 5, id: 3) }
    let!(:product4) { create(:product, available_number: 0, id: 4) }

    subject(:context) { described_class.call }

    describe '.call' do
      context 'list products out of stock' do
        it 'succeeds' do
          expect(context.result).to eq([2,4])
        end
      end
    end
  end
end
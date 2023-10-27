require "rails_helper"

RSpec.describe MerchantFacade do
    it "shows merchant data" do
        merchants = MerchantFacade.new.merchant_list

        expect(merchants.count).to eq(100)
        expect(merchants.first).to be_a(Merchant)
    end

    it "show merchant items" do
        data = {
              id: "3",
              attributes: {
                name: "Willms and Sons"
              }
            }

        merchant = Merchant.new(data)
        id = merchant.id
        items = MerchantFacade.new.merchant_items(id)

        expect(items.first.name).to eq("Item Enim Error")
    end
end
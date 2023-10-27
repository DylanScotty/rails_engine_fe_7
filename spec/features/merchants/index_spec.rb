require 'rails_helper'

RSpec.describe "Merchant Index" do
    describe "visit /merchants" do
        it "lists merchants by name" do
            visit "/merchants"

            expect(page).to have_content("Merchants")
            expect(page).to have_content("Willms and Sons")
            expect(page).to_not have_content("Dylan Timmons")
        end

        it "has a link for the merchant name" do
          data = {
              id: "3",
              attributes: {
                name: "Willms and Sons"
              }
            }
        
            merchant = Merchant.new(data)
        
            visit "/merchants"
        
        
            expect(page).to have_link(merchant.name)
            click_link(merchant.name)
        
            expect(current_path).to eq(merchant_path(merchant.id))
        end
    end
end
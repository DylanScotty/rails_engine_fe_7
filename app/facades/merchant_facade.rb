class MerchantFacade
    def merchant_list
        merchant_service = MerchantService.new
        merchant_service.merchant_names[:data].map do |merchant|
            Merchant.new(merchant)
        end
    end

    def merchant_items(merchant_id)
        data = MerchantService.new.merchants_items(merchant_id)
        data[:data].map { |merchant| Merchant.new(merchant) }
    end
end
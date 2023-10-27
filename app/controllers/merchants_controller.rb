class MerchantsController < ApplicationController
    def index
        @merchants = MerchantFacade.new.merchant_list
    end

    def show
        @merchants = MerchantFacade.new.merchant_items(params[:id])
        @items = MerchantFacade.new.merchant_items(params[:id])
    end
end
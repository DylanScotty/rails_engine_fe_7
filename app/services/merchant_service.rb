class MerchantService
    def conn
        Faraday.new(url: "http://localhost:3000")
    end

    def get_url(url)
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
    end

    def merchant_names
        get_url("/api/v1/merchants")
    end

    def merchants_items(merchant_id)
        get_url("/api/v1/merchants/#{merchant_id}/items")
    end
end
class Stock < ApplicationRecord

	def self.new_lookup(ticker_symbol)
		client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
                                   secret_token: 'sk_1aef2fc77e33495fb9f1f375fa2d5faa',
                                   endpoint: 'https://cloud.iexapis.com/v1')
		client.price(ticker_symbol)
	end

end

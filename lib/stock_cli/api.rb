require 'pry'

class API
    
        def self.gains_and_losses
          url = URI("https://apidojo-yahoo-finance-v1.p.rapidapi.com/market/get-movers?region=US&lang=en")
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE   
            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-host"] = 'apidojo-yahoo-finance-v1.p.rapidapi.com'
            request["x-rapidapi-key"] = ENV['ROYALE']
            # binding.pry
            response = http.request(request)
        end
        
        def self.gainer
            gain = JSON.parse(self.gains_and_losses.response.body)
          # binding.pry
            gain["finance"]["result"][0]["quotes"][0]["symbol"]
              
        end

        def self.loser
            lose = JSON.parse(self.gains_and_losses.response.body)
            lose["finance"]["result"][1]["quotes"][0]["symbol"]
        end


        def self.ticker
          symbol = gets.strip.upcase
            url = URI("https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-analysis?symbol=#{symbol}")
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-host"] = 'apidojo-yahoo-finance-v1.p.rapidapi.com'
            request["x-rapidapi-key"] = ENV['ROYALE']
            response = http.request(request)
        end

        def self.custom_ticker
            tx = self.ticker.response
            if tx.body != ""
                tick = JSON.parse(tx.body)
               stock_name = tick ["quoteType"]["shortName"]
             stock_price = tick["price"]["regularMarketOpen"]["raw"]

             puts "Name: #{stock_name} Price: #{stock_price}"
      
             stox =  Stock.new(stock_name, stock_price)
             stox.name.colorize(:green)
            else
                puts "This ticker does not exist"              
            end            
        end


end

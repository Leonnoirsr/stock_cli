class StockCli::CLI 

      def call
        puts "Hello I'm your stock assistant"
        puts ""
        puts "May I have your name?"
        puts ""
        name = gets.strip
        puts "Hello #{name.chomp.upcase}! I am your personal stock advisor".colorize(:green)
        API.gainer
        API.loser
        menu
        
     end 

     def menu
       inputs = nil
        until inputs == "5"
        
        puts ""    
        puts "You can ask me the following:"
        puts ""
        puts "1.Today's best performing stock on the NYSE. ".colorize(:yellow)
        puts "---------------------------------------------"
        puts "2. Today's worst performing stock on the NYSE."
        puts "---------------------------------------------"
        puts "3. Information on a stock of your choice.".colorize(:yellow)
        puts "---------------------------------------------"
        puts "4. Your portfolio"
        puts "---------------------------------------------"
        puts "5. Exit".colorize(:red)
        puts ""
        puts "Now, what can I do for you?".colorize(:green)
        
        
        inputs = gets.strip.downcase

        case inputs 
            
        when "1"
            puts "Today's best performing stock on the NYSE was".colorize(:red)
           puts ""
           puts "---------------------------------------------"
            puts API.gainer.colorize(:green)
            puts "---------------------------------------------"
        when "2"
            puts "Today's worst performing stock on the NYSE was".colorize(:red)
            puts ""
            puts "---------------------------------------------"
            puts API.loser.colorize(:green)
            puts "---------------------------------------------"
        when "3"
            puts "I'll gladly provide you with information on a stock of your choice".colorize(:yellow)
            puts ""
            puts "What stock would you like me to look up?".colorize(:green)
            puts ""
            puts API.custom_ticker
            puts "---------------------------------------------"

        when "4"
            puts "Here is the portfolio of stocks you're interested in"
            puts "---------------------------------------------"
            puts Stock.all.map { |stock| "Name: #{stock.name.colorize(:green)} |  Price: #{stock.price}" }
            puts "---------------------------------------------"

        when "5"
            puts "I'm glad I could help! Enjoy the day".colorize(:red)
        end 
        end 
     end
    end
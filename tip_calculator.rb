class Tip_Calculator
  attr_accessor :bill, :tip_percent, :num_people
  
  def initialize
      @bill = bill
      @tip_percent = tip_percent
      @num_people = num_people
  end
  
  def grand_total
      (@bill +(@bill * @tip_percent/100.00)).round(2)
  end
  
  def total_per_person
      (grand_total / num_people).round(2)
  end  
  
  def run
    puts "What is the total bill?"
    @bill = gets.chomp.to_f
    puts "How many people?"
    @num_people = gets.chomp.to_i
    puts "What percentage are you tipping? (e.g. 07)"
    @tip_percent = gets.chomp.to_f
    puts "Grand total is $#{grand_total} and total per person is $#{total_per_person}."
  end
end

tip_calc = Tip_Calculator.new
tip_calc.run
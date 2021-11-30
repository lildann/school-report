class SchoolReport
  attr_reader :green_total, :amber_total, :red_total

  def initialize
    @green_total = 0
    @amber_total = 0
    @red_total = 0
  end
  
  def add_scores(scores)
    results = scores.split(", ")

    results.each do |result| 
      if result == "Green"
        @green_total += 1
      elsif result == "Amber"
        @amber_total += 1
      elsif result == "Red"
        @red_total += 1
      end
    end
    generate_report
  end

  def generate_report
    "Test 1:\nGreen: #{@green_total}\nAmber: #{@amber_total}\nRed: #{@red_total}"
  end
  
end
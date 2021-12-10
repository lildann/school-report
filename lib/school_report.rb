class SchoolReport
  # attr_reader :all_scores

  def initialize
    @all_scores = []
  end
  
  def add_scores(scores)
    @results = scores.split(", ")
    reset_totals
    calculate_totals
    scores.empty? ? @all_scores << "No results given" : generate_single_test
    generate_report
  end

  def generate_report
    report = []
    @all_scores.each_with_index { |scores, index| report << "Test #{index + 1}:\n#{scores}" }
    report.join("\n---\n")
  end

  private 

  def generate_single_test 
    @all_scores << "Green: #{@green_total}\nAmber: #{@amber_total}\nRed: #{@red_total}"
  end

  def reset_totals
    @green_total = 0
    @amber_total = 0
    @red_total = 0
  end

  def calculate_totals
    @results.each do |result| 
      if result == "Green"
        @green_total += 1
      elsif result == "Amber"
        @amber_total += 1
      elsif result == "Red"
        @red_total += 1
      end
    end
  end
end

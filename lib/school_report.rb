class SchoolReport
  def add_scores(scores)

    results = scores.split(", ")
    green_total = 0
    amber_total = 0

    results.each do |result| 
      if result == "Green"
        green_total += 1
      elsif result == "Amber"
        amber_total += 1
      end
    end
      "Test 1:\nGreen: #{green_total}\nAmber: #{amber_total}\nRed: 0"
  end
end
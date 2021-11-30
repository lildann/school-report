require 'school_report'

describe SchoolReport do
  it 'summarises test results for one test score' do
    school_report = SchoolReport.new
    expect(school_report.add_scores("Green")).to eq("Test 1:\nGreen: 1\nAmber: 0\nRed: 0")
  end

  it 'summarises test results for two test scores' do
    school_report = SchoolReport.new
    expect(school_report.add_scores("Green, Amber")).to eq("Test 1:\nGreen: 1\nAmber: 1\nRed: 0")
  end
end
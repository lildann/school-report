require 'school_report'

describe SchoolReport do
  let(:school_report) { SchoolReport.new }

  it 'summarises test results for one test score' do
    expect(school_report.add_scores("Green")).to eq("Test 1:\nGreen: 1\nAmber: 0\nRed: 0")
  end

  it 'summarises test results for two test scores' do
    expect(school_report.add_scores("Green, Amber")).to eq("Test 1:\nGreen: 1\nAmber: 1\nRed: 0")
  end

  it 'summarises test results for three different scores' do
    expect(school_report.add_scores("Green, Amber, Red")).to eq("Test 1:\nGreen: 1\nAmber: 1\nRed: 1")
  end

  it 'generates a report' do
    school_report.add_scores("Green, Amber, Red")
    expect(school_report.generate_report).to eq("Test 1:\nGreen: 1\nAmber: 1\nRed: 1")
  end

  it 'summarises multiple test results of different values' do
    expect(school_report.add_scores("Green, Green, Red, Amber, Red")).to eq("Test 1:\nGreen: 2\nAmber: 1\nRed: 2")
  end

  it 'evaluates multiple reports' do
    school_report.add_scores("Green, Amber, Red")
    school_report.add_scores("Amber, Amber, Green")
    expect(school_report.generate_report).to eq("Test 1:\nGreen: 1\nAmber: 1\nRed: 1\n---\nTest 2:\nGreen: 1\nAmber: 2\nRed: 0")
  end

  it 'returns message if no scores entered' do
    school_report.add_scores("")
    expect(school_report.generate_report).to eq("Test 1:\nNo results given")
  end
end
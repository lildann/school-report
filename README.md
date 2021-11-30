## Code Review 30/11/2021

School Reports Company
Aiming to assist teachers understand students performance over multiple tests in one given year

Build system that accepts multiple tests entries and reports collectively

| INPUT | OUTPUT |
|-------|--------|
|add_scores("Green") | "Test 1:\nGreen: 1\nAmber: 0\nRed: 0"
|add_scores("Green, Amber, Red") | "Test 1:\nGreen: 1\nAmber: 1\nRed: 1"
|add_scores("Green, Amber, Red"), add_scores("Amber, Amber, Green") | "Test 1:\nGreen: 1\nAmber: 1\nRed: 1\n---\nTest 2:\nGreen: 1\nAmber: 2"
|add_scores("Green, Green, Red, Amber, Red")| "Test 1:\nGreen: 2\nAmber: 1\nRed: 2"
|add_scores("") | "Test 1:\nNo results given"
|add_scores("") | ArgumentError "Input must be a comma-separated string"


Class - Report
Methods:
* add_scores(results) parameter is a String
* generate_report() --> String 

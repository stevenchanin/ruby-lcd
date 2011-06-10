require 'rspec'
require './spec_helper.rb'

require './lcd.rb'

#testing the stuff in spec_helper.rb
describe "capturing stdout" do
  it "should return hello" do
    capture_stdout { Lcd.output_tester }.should output("hello")
  end
end


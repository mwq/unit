require 'unit'
describe Unit do

  examples = {
    '1 meter in feet' => '3.28 feet',
    '1 meter to feet' => '3.28 feet'
  }

  examples.each do |command, expected|
    it %(should convert '#{command}' to '#{expected}') do
      unit = Unit.new command
      result = unit.result
      result.should == expected
    end
  end

end

require 'unit'
describe Unit do

  examples = {
    '1 meter in feet' => '3.28 feet',
    '1 meter to feet' => '3.28 feet',
    '1.0 meter to feet' => '3.28 feet',
    '1 meter + 1 meter' => '2 meters',
    '0.5 meters + 0.5 meters' => '1 meter'
  }

  examples.each do |command, expected|
    it %(should convert '#{command}' to '#{expected}') do
      unit = Unit.new command
      result = unit.result
      result.should == expected
    end
  end

end

require 'spec_helper'

describe Student do
  describe "age" do
    it "should return the users age" do
      @age = Student.new
      student_age = @age.age(Date.new(1986,9,7), Date.new(2011,1,1))
      student_age.should == 24
    end
  end
end

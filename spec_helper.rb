require 'stringio'

module Kernel
  def capture_stdout
    out = StringIO.new
    $stdout = out
    yield
    return out.string
  ensure
    $stdout = STDOUT
  end
end

RSpec::Matchers.define :output do |expected|
  match do |actual|
    actual == "#{expected}\n"
  end
end


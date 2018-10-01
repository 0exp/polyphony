# frozen_string_literal: true

require 'modulation'

Nuclear = import('../../lib/nuclear')

t1 = Nuclear.interval(1) do
  puts Time.now
end

Nuclear.timeout(5) do
  t1.stop
  puts "done with timer"
end

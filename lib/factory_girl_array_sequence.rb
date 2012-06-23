require "factory_girl"
require "factory_girl_array_sequence/version"
require "factory_girl/array_sequence"

def FactoryGirl.array_sequence(array)
  FactoryGirl::ArraySequence.init(array)
end
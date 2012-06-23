module FactoryGirl
  module ArraySequence

    def self.init(array)
      value = array.first
      array << array.shift

      value.class_eval %Q[
        def next
          FactoryGirl.array_sequence(#{array})
        end
      ]

      value
    end

  end
end
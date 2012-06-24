module FactoryGirlArraySequence
  def self.init(array)
    value = array.first
    array << array.shift

    value.class_eval %Q[
      def next
        FactoryGirlArraySequence.init(#{array})
      end
    ]

    value
  end
end

module FactoryGirl
  def self.array_sequence(name, *args, &block)
    options = args.extract_options!
    value = FactoryGirlArraySequence.init(args)
    value << options
    sequence(name, args, &block)
  end
end

require "factory_girl_array_sequence/version"
module Paramable
  module ClassMethods

  end
  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end

class Song
  extend Paramable::ClassMethods
  include Paramable::InstanceMethods
end

class Artist
  extend Paramable::ClassMethods
  include Paramable::InstanceMethods
end
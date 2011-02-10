require 'active_record'
require 'uuidtools'

module GoldRecord
  module ClassMethods
    def gold_record?
      true
    end

    def find_one(id)
      super(GoldRecord::UUID.coerce(id))
    end

    def find_some(ids)
      ids = ids.map { |id| GoldRecord::UUID.coerce(id) }
      ids = ids.uniq # must do this after coercion
      super(ids)
    end
  end

  module InstanceMethods
    def to_uuid
      UUIDTools::UUID.parse_raw(id) rescue nil
    end

    def to_param
      (id = self.id) ? GoldRecord::UUID.encode_hex(id) : nil
    end

    def generate_id!
      self[self.class.primary_key] ||= GoldRecord::UUID.random_generate
    end
  end

  module ActMethods
    def acts_as_gold_record
      extend GoldRecord::ClassMethods
      include GoldRecord::InstanceMethods
      before_create :generate_id!
    end
  end
end

ActiveRecord::Base.extend GoldRecord::ActMethods

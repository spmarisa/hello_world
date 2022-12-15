class DataTypeValidators

    def self.is_range_type?(input_range)
        raise "This is an exception" if input_range.class.name != "Range"
    end

end    
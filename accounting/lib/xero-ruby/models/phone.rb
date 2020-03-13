=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0.4
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.0

=end

require 'time'
require 'date'

module XeroRuby
  class Phone
    attr_accessor :phone_type

    # max length = 50
    attr_accessor :phone_number

    # max length = 10
    attr_accessor :phone_area_code

    # max length = 20
    attr_accessor :phone_country_code

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'phone_type' => :'PhoneType',
        :'phone_number' => :'PhoneNumber',
        :'phone_area_code' => :'PhoneAreaCode',
        :'phone_country_code' => :'PhoneCountryCode'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'phone_type' => :'String',
        :'phone_number' => :'String',
        :'phone_area_code' => :'String',
        :'phone_country_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Phone` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Phone`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'phone_type')
        self.phone_type = attributes[:'phone_type']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'phone_area_code')
        self.phone_area_code = attributes[:'phone_area_code']
      end

      if attributes.key?(:'phone_country_code')
        self.phone_country_code = attributes[:'phone_country_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@phone_number.nil? && @phone_number.to_s.length > 50
        invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 50.')
      end

      if !@phone_area_code.nil? && @phone_area_code.to_s.length > 10
        invalid_properties.push('invalid value for "phone_area_code", the character length must be smaller than or equal to 10.')
      end

      if !@phone_country_code.nil? && @phone_country_code.to_s.length > 20
        invalid_properties.push('invalid value for "phone_country_code", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      phone_type_validator = EnumAttributeValidator.new('String', ["DEFAULT", "DDI", "MOBILE", "FAX", "OFFICE"])
      return false unless phone_type_validator.valid?(@phone_type)
      return false if !@phone_number.nil? && @phone_number.to_s.length > 50
      return false if !@phone_area_code.nil? && @phone_area_code.to_s.length > 10
      return false if !@phone_country_code.nil? && @phone_country_code.to_s.length > 20
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_type Object to be assigned
    def phone_type=(phone_type)
      validator = EnumAttributeValidator.new('String', ["DEFAULT", "DDI", "MOBILE", "FAX", "OFFICE"])
      unless validator.valid?(phone_type)
        fail ArgumentError, "invalid value for \"phone_type\", must be one of #{validator.allowable_values}."
      end
      @phone_type = phone_type
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.length > 50
        fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 50.'
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_area_code Value to be assigned
    def phone_area_code=(phone_area_code)
      if !phone_area_code.nil? && phone_area_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "phone_area_code", the character length must be smaller than or equal to 10.'
      end

      @phone_area_code = phone_area_code
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_country_code Value to be assigned
    def phone_country_code=(phone_country_code)
      if !phone_country_code.nil? && phone_country_code.to_s.length > 20
        fail ArgumentError, 'invalid value for "phone_country_code", the character length must be smaller than or equal to 20.'
      end

      @phone_country_code = phone_country_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          phone_type == o.phone_type &&
          phone_number == o.phone_number &&
          phone_area_code == o.phone_area_code &&
          phone_country_code == o.phone_country_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [phone_type, phone_number, phone_area_code, phone_country_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end

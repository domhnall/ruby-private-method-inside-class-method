require 'debug'

module HasContent
  def has_content(field_name=:content)
    define_method "get_#{field_name}" do
      log("Getting #{field_name}")
      instance_variable_get("@#{field_name}")
    end

    define_method "set_#{field_name}" do |content|
      log("Setting #{field_name}=#{content}")
      instance_variable_set("@#{field_name}", content)
    end

    #private

    #define_method "log" do |msg|
    #  puts "Logging: #{msg}"
    #end

    #def log(msg)
    #  puts "Logging: #{msg}"
    #end

    class_eval do
      private

      define_method "log" do |msg|
        puts "Logging: #{msg}"
      end
    end
  end
end

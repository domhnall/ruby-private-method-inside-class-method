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

    # This is the original implementation.
    # It works, but it doesn't actually render the Box#log method as
    # private!
    # Comment out this section when using the solution beneath
    # ORIGINAL IMPLEMENTATION
    private

    define_method "log" do |msg|
      puts "Logging: #{msg}"
    end
    #private :log # This fixes it also
    # END ORIGINAL IMPLEMENTATION

    # The solution is to use class_eval
    # Uncomment the section below and rerun `> ruby main.rb`
    # UPDATED IMPLEMENTATION
    #class_eval do
    #  private
    #
    #  define_method "log" do |msg|
    #    puts "Logging: #{msg}"
    #  end
    #end
    # END UPDATED IMPLEMENTATION
  end
end

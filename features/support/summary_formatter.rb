class SummaryFormatter
  def initialize(runtime, io, options)
    @io = io
    @io.puts '-------------'
    @io.puts 'Features List'
    @io.puts '-------------'
  end

  def before_feature(feature)
    @io.puts
    @io.puts feature.short_name
    @io.puts '-' * feature.short_name.size
  end

  def before_feature_element(feature_element)
    @io.puts "  #{feature_element.name}"
  end

  def after_features(_)
    @io.puts
  end
end

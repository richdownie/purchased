module DebugHelper
  def inspect_object(object, label=nil)
    return unless RAILS_ENV == 'development'
    title = label || "#{object.class.name} (#{object.id})"
    <<-CODE
      <div class="object_inspection">
        <h3>#{title}</h3>
        <code>#{html_sanitized_inspect(object)}</code>
      </div>
    CODE
  end

  def html_sanitized_inspect(object)
    object.inspect.gsub(/</, '&lt;').gsub(/>/, '&gt;')
  end
end
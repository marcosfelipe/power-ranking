module ResultsHelper
  def labeled_states results
    results.map do |result|
      color_class = 'red'
      if result.state == 'v'
        color_class = 'green'
      elsif result.state == 'e'
        color_class = 'orange'
      end
      content_tag :a, result.state, class: "ui #{color_class} label", title: result.description
    end.join('').html_safe
  end
end

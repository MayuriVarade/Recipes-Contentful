module RecipeHelper
  def https_image_url(image_url)
    image_url.sub %r<\A//>, 'https://'
  end

  def format_description(description)
  	formatted_description = ""
  	description.each do |desc|
  		formatted_description = formatted_description + "<p>" + desc["content"].first["value"] + "</p>"
  	end	
  	formatted_description.html_safe
  end	

  def format_tags(tags)
  	tags.map(&:inspect).join(', ')
  end	
end

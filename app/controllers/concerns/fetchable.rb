module Fetchable
  extend ActiveSupport::Concern

  # Dont expose the keys as below. Save into environment variables
  def client
    @client = Contentful::Client.new(
      space: Rails.application.credentials.space,
      access_token: Rails.application.credentials.access_token
    )
  end

  def get_all_recipes
    entries = client.entries(content_type: 'recipe', locale: '*')
  end

  def get_recipe(id)
    entry = client.entry id
  end

end

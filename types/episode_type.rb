# frozen_string_literal: true

module Types
  class EpisodeType < BaseObject
    pundit_role :view

    field :id, ID, null: false
    field :title, String,
          null: false,
          description: 'Title of the episode'

    field :slug, String,
          null: false,
          description: 'URL friendly version of the title'

    field :sku, String,
          null: false,
          description: 'Legacy field for iOS, links to in-app purchases'

    field :tagline, String,
          null: true,
          description: 'One sentence description of the episode. TODO: Check'

    field :episode_number, Int,
          null: false,
          description: 'Public-facing display of the episode number'

    field :release_date, Types::DateType,
          null: true,
          description: 'The date on which the public can read/buy it.'

    field :previously_on, String,
          null: true,
          description: 'Paragraph of text describing the previous episode.'

    field :free_pilot, Boolean,
          null: false,
          description: 'Is this episode a free pilot episode?' \
                       'If true, will not count for total # of episodes'

    field :header_background_color, String,
          null: true,
          description: 'If non-empty, the hex code for the header background'

    field :divider_color, String,
          null: true,
          description: 'Color of the divider bars. TODO: Check?'

    field :subscriber_price, Int,
          null: true,
          description: 'Price of the episode for subscribers, in USD cents'

    field :item_price, Int,
          null: true,
          description: 'Price of the episode for non-subscribers in USD cents'

    field :shortened_url, String,
          null: true,
          description: 'An optional shortened link for easier linking.'

    field :pdf, String,
          null: true,
          description: 'Link to the PDF.'

    field :mobi, String,
          null: true,
          description: 'Link to the mobi (Kindle) file.'

    field :epub, String,
          null: true,
          description: 'Link to the epub file.'

    field :cover, String,
          null: true,
          description: 'Cloudinary link to the cover image.'

    field :audio, String,
          null: true,
          description: 'Link to the audio file.'

    field :body, String,
          null: true,
          pundit_role: :read,
          description: 'Full body, null unless user can read / free'

    field :sample, String,
          null: true,
          description: 'First 5000 characters of the body, available to anyone.'

    field :state, Types::PublishableState,
          null: true

    field :byline, String,
          null: true,
          description: 'authors byline, in raw text'

    # field :contributors_hash, jsonb
    field :season, SeasonType, null: false
    field :serial, SerialType, null: false
  end
end

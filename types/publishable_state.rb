# frozen_string_literal: true

class Types::PublishableState < Types::BaseEnum
  value 'draft', "Any piece of content that's unfinished"
  value 'ready_for_review', 'Available for review, viewable by staff only'
  value 'ready_for_publication', 'Approved, not for public consumption'
  value 'published', 'Available on the website'
  value 'pulled', 'Unavailable, but customers who own it still can consume it'
end

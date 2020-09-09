json.data @links do |link|
  json.id link.id
  json.name link.name
  json.slug link.slug
  json.url link.url
end
json.metadata do
  json.total_page @links.total_pages
  json.total_pages @links.total_pages
  json.current_page @links.current_page
  json.next_page @links.next_page
  json.prev_page @links.prev_page
  json.is_first_page @links.first_page?
  json.is_last_page @links.last_page?
  json.is_out_of_range @links.out_of_range?
end

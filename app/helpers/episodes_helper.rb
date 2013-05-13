module EpisodesHelper
  def tags_menu
    Proc.new do |primary|
      primary.dom_class = 'sidebar_menu'
      tag_cloud Episode.tag_counts, %w[s m l] do |tag, css_class|
        primary.item "tag_#{tag.id}", tag.name, tag_path(tag.name)
      end
    end
  end
end
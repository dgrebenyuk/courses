module BooksHelper
  def search_results
    if @books.empty?
      "No results"
    else
      content_tag(:ol) do
        @books.map do |book|
          content_tag(:li, book.title)
        end.join.html_safe
      end
    end
  end
end

class Book
  attr_accessor :title, :description, :isbn

  def initialize(options = {})
    @title = options[:title]
    @description = options[:description]
    @isbn = options[:isbn]
  end

  def grab_book_info
    Rails.logger.info "Grabbing book '#{@isbn}' info"
  end

  def to_s
    [@title, @isbn].join(", ")
  end
end

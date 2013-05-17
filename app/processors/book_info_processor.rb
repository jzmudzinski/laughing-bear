class BookInfoProcessor < TorqueBox::Messaging::MessageProcessor

  ##
  # This method grabs info about book from message
  #
  # = Example
  #
  #   This is how sample message should look like:
  def on_message(message)
    puts "Grabbing info for book #{message} ... "
    b = Book.new message
    b.grab_book_info
    queue = TorqueBox::Messaging::Queue.new('/queues/books/create')
    queue.publish({title: b.title})
    puts " done"
  end

end

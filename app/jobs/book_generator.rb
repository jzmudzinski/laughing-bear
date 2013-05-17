class BookGenerator

  def run
    puts "Generating random book"
    queue = TorqueBox::Messaging::Queue.new('/queues/books/new')
    queue.publish({title: "Book Title #{rand(100)}", isbn: rand(10000000)})
  end

end

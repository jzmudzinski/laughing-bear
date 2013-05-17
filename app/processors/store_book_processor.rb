class StoreBookProcessor < TorqueBox::Messaging::MessageProcessor

  ##
  # This method stores book in a library
  #
  # = Example
  #
  #   This is how sample message should look like:
  def on_message(message)
    puts "Putting book #{message['title']} into library..."
    sleep(2)
    puts "... stored"
  end

end

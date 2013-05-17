class PostIdeaProcessor < TorqueBox::Messaging::MessageProcessor

  def on_message(message)
    if (rand(10) > 8)
      puts "Creating new post from idea #{message}"
      # Post.create(:title => message, :body => "Random post created from an idea")
      puts "Processing..."
      sleep(5)
      puts " done"
    end
  end

end

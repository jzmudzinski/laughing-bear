class PostCounter

  def run
    puts "#{rand(10)} posts in the database"
    @queue = TorqueBox::Messaging::Queue.new('/queue/post_ideas')
    @queue.publish("Random idea #{rand(100)}")
  end

end

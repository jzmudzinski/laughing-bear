class PostIdeaGrabber

  def initialize(options)
    @queue = TorqueBox::Messaging::Queue.new(options['queue_name'])
  end

  def start
    puts "******** Starting PostIdeaGrabber ********"
    Thread.new do
      until @done
        @queue.publish("Random idea #{rand(100)}")
        sleep 2
      end
    end
  end

  def stop
    @done = true
  end
end

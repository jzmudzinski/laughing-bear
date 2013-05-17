describe "status page" do
  it "responds with 200 'OK' to /status" do
    get "/status"
    response.response_code.should == 200
  end
end

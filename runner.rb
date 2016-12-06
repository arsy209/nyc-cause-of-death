require_relative 'config'



args = {url: "https://data.cityofnewyork.us/resource/uvxr-2jwn.json",
view: View}


controller = Controller.new(args)

controller.run

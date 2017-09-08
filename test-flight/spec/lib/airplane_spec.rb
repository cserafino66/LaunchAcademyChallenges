require_relative "../../lib/airplane"

describe Airplane do
  let (:my_airplane) { Airplane.new("cesna", 10, 150) }
  describe "#initialization" do
    it "creates an instance of obj:Airplane" do
      expect(my_airplane).to be_a(Airplane)
    end

    it "assigns the airplane type" do
      expect(my_airplane.type).to eq("cesna")
    end

    it "assigns the airplane wing loading" do
      expect(my_airplane.wing_loading).to eq(10)
    end

    it "assigns the airplane horsepower" do
      expect(my_airplane.horsepower).to eq(150)
    end
  end

  describe "#start" do
      it "prints an error message if already started" do
        my_airplane.engine_status = 'on'
        expect(my_airplane.start).to eq('The airplane has already started!')
      end

      it "starts the airplane" do
        my_airplane.engine_status = ''
        expect(my_airplane.start).to eq('The airplane has started!')
      end
    end

  describe "#takeoff" do
    it "prints an error message is plane is not started" do
      my_airplane.engine_status = ''
      expect(my_airplane.takeoff).to eq("Please start the airplane first!")
    end

    it "prints an error message if the plane is already airborne" do
      my_airplane.engine_status = 'on'
      my_airplane.air_status = 'airborne'
      expect(my_airplane.takeoff).to eq("Airplane is already airborne!")
    end

    it "makes the plane takeoff" do
      my_airplane.engine_status = 'on'
      my_airplane.air_status = 'grounded'
      expect(my_airplane.takeoff).to eq("Airplane has taken off!")
    end
  end

  describe "#land" do
    it "prints an error message if the plane is not started" do
      my_airplane.engine_status = ''
      expect(my_airplane.land).to eq("The airplane hasn't started!")
    end

    it "prints an error message if the plane is on the ground" do
      my_airplane.engine_status = 'on'
      my_airplane.air_status = 'grounded'
      expect(my_airplane.land).to eq('The plane is already on the ground!')
    end

    it "lands the plane" do
      my_airplane.engine_status = 'on'
      my_airplane.air_status = 'airborne'
      expect(my_airplane.land).to eq("The airplane has landed!")
    end
  end
end

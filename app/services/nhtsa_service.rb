class NhtsaService

    def load_model_data(year_range)
        begin
          year_range.each do |year|
            data_for_year = get_data_for_year(year)
            save_data_for_year(data_for_year, year)
          end

          return true
        rescue
          return false
        end
        
    end
    
    def get_data_for_year(year)
        response = HTTParty.get("https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformakeyear/make/honda/modelyear/#{year}?format=json")
    end
    
    def save_data_for_year(response, year)
        return if response["Count"] == 0

        response["Results"].each do |f|
            car_model = CarModel.new
            car_model.makeid = f["Make_ID"]
            car_model.makename = f["Make_Name"]
            car_model.modelid = f["Model_ID"]
            car_model.modelname = f["Model_Name"]
            car_model.saleyear = year
            car.save
        end    

    end    
end    
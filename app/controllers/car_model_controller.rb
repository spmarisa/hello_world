class CarModelController < ApplicationController

    def load_data

        year_range = (params[:start_year]..params[:end_year])

        DataTypeValidators.is_range_type?(year_range)

        if NhtsaService.new().load_model_data(year_range)
            render json: {message: "successful"}
        else
            render json: {message: "failed"}
        end        
    end

end

function [holding_daily, rtn_daily] = PerformBackTest(back_handle, model, pltfm, begin_date, end_date)
    if isa(model, 'BaseModel') ~= 1%determine if input is object of specified class
        disp('Input Model Error!');
        holding_daily = 0;
        rtn_daily = 0;
    else
        if begin_date >= end_date
            disp('Input Date Error!');
            holding_daily = 0;
            rtn_daily = 0;
        else
            [holding_daily, rtn_daily] = back_handle.BackTest(model, pltfm, begin_date, end_date);
        end
    end
end



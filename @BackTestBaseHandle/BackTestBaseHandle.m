classdef BackTestBaseHandle < handle %引用类
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        day    %属性成员、数据成员
    end
    
    methods
        function back_handle = BackTestBaseHandle(d)
            back_handle.day = d;
        end
        %类中包含方法的申明
        [holding_daily, rtn_daily] = PerformBackTest(back_handle, model, pltfm, begin_date, end_date);

        
        
        DispInfo(bk);
        %这个类中没有
        [holding_daily, rtn_daily] = BackTest(back_handle, model, pltfm, begin_date, end_date);

        
    end
    
end


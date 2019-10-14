function Data = xlsdatain(varargin)
    n = max(size(varargin));
    for i=1:n
        eval(['Data', int2str(i),' = xlsread(varargin{i})']);
        eval(['save Data',int2str(i),'.mat']) 
    end
    save
end


% does not use any more

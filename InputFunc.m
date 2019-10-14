function Data = InputFunc(cell)
    n = max(size(cell));
    for i=1:n
        tempname = char(cell(1,i));
        eval([cell{1,i},' = xlsread(cell{1,i});']);
        eval(['save ',cell{1,i},'.mat']) ;
    end
    save;
end
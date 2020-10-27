%%
% 26/10/2020
%%
function str = fixVar(varargin)
    % Default number of digits after the decimal to truncate to
    dec = 2;
    str = varargin{1};
    if(nargin == 2)
        str = strrep(str, inputname(2), sprintf("%." + dec + "f", varargin{2}));
    else
        if(and(nargin >= 3, isempty(inputname(2))))
            dec = varargin{2};
            start = 3;
        else
            start = 2;
        end
        for i = start:nargin
            if(and(i + 1 <= nargin, ~isempty(inputname(i))))
                if(isempty(inputname(i + 1)))
                    str = strrep(str, inputname(i), sprintf("%." + varargin{i + 1} + "f", varargin{i}));
                else
                    str = strrep(str, inputname(i), sprintf("%." + dec + "f", varargin{i}));
                end
            else
                str = strrep(str, inputname(i), sprintf("%." + dec + "f", varargin{i}));
            end
        end
    end
end

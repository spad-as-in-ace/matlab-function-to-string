%%
% 26/10/2020
% Ver. 0.1.4
%%
function str = toString(varargin)
    str = func2str(varargin{1});
    str = str((strfind(str,')') + 1):length(str));
    if(nargin == 1)
        str = inputname(1) + " = " + str;
    elseif(nargin >= 2)
        str = varargin{2} + " = " + str;
    end
end

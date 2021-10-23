function sumatrapdf(filenames)

%%
%       SYNTAX: sumatrapdf(filenames);
%
%  DESCRIPTION: Use SumatraPDF to open PDF files.
%
%        INPUT: - filenames (char or N-D cell array of char or 
%                                    N-D array of categorical)
%                   Filename(s).
%
%       OUTPUT: none.


%% Force filenames into cell array.
filenames = convert_filenames(filenames);


%% Open PDF files.
exe = fullfile(fileparts(mfilename('fullpath')), 'private', ...
    'SumatraPDF-3.1.2-64', 'SumatraPDF.exe');
for n = 1:numel(filenames)
    cmd = [exe, ' ',                            ...
           sprintf('"%s" ', filenames{n}),      ...
           sprintf('&'),                        ...        
        ];
    dos(cmd);
end


end


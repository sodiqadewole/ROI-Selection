function build()

if ~exist('ptsFilter_mex', 'file')
    fprintf('Compiling ptsFilter_mex\n');
    mex -O -outdir functions  ...
        CXXFLAGS="\$CXXFLAGS -std=c++11"  ...
        -largeArrayDims ...
        functions/ptsFilter_mex.cpp ...
        -output ptsFilter_mex;
end
if ~exist('generate_box_mex', 'file')
    fprintf('Compiling generate_box_mex\n');
    mex -O -outdir functions ...
        CXXFLAGS="\$CXXFLAGS -std=c++11"  ...
        -largeArrayDims ...
        functions/generate_box_mex.cpp ...
        -output generate_box_mex;
end
if ~exist('computeII_mex', 'file')
    fprintf('Compiling computeII_mex\n');
    mex -O -outdir functions ...
        CXXFLAGS="\$CXXFLAGS -std=c++11"  ...
        -largeArrayDims ...
        functions/computeII_mex.cpp ...
        -output computeII_mex;
end
if ~exist('fillHoles_mex', 'file')
    fprintf('Compiling fillHoles_mex\n');
    mex -O -outdir functions ...
        CXXFLAGS="\$CXXFLAGS -std=c++11"  ...
        -largeArrayDims ...
        functions/fillHoles_mex.cpp ...
        -output fillHoles_mex;
end


end

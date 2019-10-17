local real_dofile = dofile
DOFILE_CACHE = {}
function dofile(path)
	if DOFILE_CACHE[path] then return end
	real_dofile(path)
	DOFILE_CACHE[path] = true
end

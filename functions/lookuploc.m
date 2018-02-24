function conf = lookuploc(config, locdb)
  for [ val, key ] = config
     conf.(key) = val;
     if isfield(val,"label")
	label = getfield(locdb, val.label);
        conf.(key).lat = label.lat;
	conf.(key).long = label.long;
     end
  end     
endfunction

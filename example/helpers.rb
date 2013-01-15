def validate_band! band
  begin
    raise InvalidBandName if band.name.nil?
    raise InvalidBandURL if band.url.nil?
    # Additional checks here
  rescue InvalidBandName, InvalidBandURL
    raise
  rescue => e
    require 'pry';binding.pry
  end
end

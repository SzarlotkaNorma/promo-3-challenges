def french_phone_number?(phone_number)
  # TODO: true or false?
  !!(phone_number =~ /((00|\+)33|0)\D?[1-9](\D?\d\d){4}/)
end
